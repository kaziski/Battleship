class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :length
      t.boolean :placed, default: false
      t.integer :player_id
      t.timestamps
    end
  end
end
