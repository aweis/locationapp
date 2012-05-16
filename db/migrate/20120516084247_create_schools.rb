class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :state
      t.text :description
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
