class AddEpisodeToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :episode, :integer
  end
end
