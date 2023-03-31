class ChangeLongitudeToBeFloatInSightings < ActiveRecord::Migration[7.0]
  def change
    remove_column :sightings, :longitude
    add_column :sightings, :longitude, :float
  end
end
