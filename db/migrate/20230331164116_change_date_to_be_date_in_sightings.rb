class ChangeDateToBeDateInSightings < ActiveRecord::Migration[7.0]
  def change
    remove_column :sightings, :date
    add_column :sightings, :date, :date
  end
end
