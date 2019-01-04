class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :event
      t.integer :begin_ym
      t.integer :begin_day
      t.integer :begin_time
      t.integer :end_ym
      t.integer :end_day
      t.integer :end_time
      t.integer :year
      t.string :month
      t.string :begin_dt
      t.string :end_dt
      t.string :damage
      t.string :tor_f_scale
      t.float :tor_length
      t.integer :tor_width
      t.string :begin_loc
      t.string :end_loc
      t.float :begin_lat
      t.float :end_lat
      t.float :begin_lon
      t.float :end_lon
      t.text :narrative
      t.integer :episode_id

      t.timestamps
    end
    add_index :events, :episode_id
  end
end
