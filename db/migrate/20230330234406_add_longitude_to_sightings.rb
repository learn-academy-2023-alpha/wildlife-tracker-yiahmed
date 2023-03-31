class AddLongitudeToSightings < ActiveRecord::Migration[7.0]
  def change
    add_column :sightings, :longitude, :string
  end
end
