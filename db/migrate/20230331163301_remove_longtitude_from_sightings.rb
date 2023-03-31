class RemoveLongtitudeFromSightings < ActiveRecord::Migration[7.0]
  def change
    remove_column :sightings, :longtitude, :string
  end
end
