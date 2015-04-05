class CreateWiths < ActiveRecord::Migration
  def change
    create_table :withs do |t|
      t.text :text
      t.string :email
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
