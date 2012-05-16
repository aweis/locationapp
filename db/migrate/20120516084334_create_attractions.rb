class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :street
      t.integer :school_id
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
