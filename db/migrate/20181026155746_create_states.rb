class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.integer :fip
      t.string :name
      t.string :code
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
