class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :episode
      t.integer :fip
      t.text :narrative
      t.integer :state_id

      t.timestamps
    end
    add_index :episodes, :state_id
  end
end
