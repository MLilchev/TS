class CreateGeodata < ActiveRecord::Migration[5.2]
  def change
    create_table :geodata do |t|
      t.integer :EVENT_ID
      t.string :STATE
      t.integer :STATE_FIPS
      t.string :BEGIN_LOCATION
      t.string :END_LOCATION
      t.float :BEGIN_LAT
      t.float :BEGIN_LON
      t.float :END_LAT
      t.float :END_LON

      t.timestamps
    end
  end
end
