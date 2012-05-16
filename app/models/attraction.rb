class Attraction < ActiveRecord::Base
  attr_accessible :lat, :lon, :name, :school_id, :street
  
  belongs_to :school

  before_save :find_attraction_coordinates

  private
  
  def find_attraction_coordinates
    coord = Geokit::Geocoders::GoogleGeocoder.geocode "#{name}, #{street}"
    if coord.success
      self.lat, self.lon = coord.ll.split(",")
    else
      errors[:base] << "Error with geocoding"
    end
  end


end
