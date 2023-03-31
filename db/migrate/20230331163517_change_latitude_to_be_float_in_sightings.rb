class ChangeLatitudeToBeFloatInSightings < ActiveRecord::Migration[7.0]
  def change
    remove_column :sightings, :latitude
    add_column :sightings, :latitude, :float
  end
end
