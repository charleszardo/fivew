class CreateDoings < ActiveRecord::Migration
  def change
    create_table :doings do |t|
      t.text :text
      t.string :email
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
