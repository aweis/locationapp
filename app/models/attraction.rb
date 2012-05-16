class Attraction < ActiveRecord::Base
  attr_accessible :lat, :lon, :name, :school_id, :street
  
  belongs_to :school

end
