class CreateWheres < ActiveRecord::Migration
  def change
    create_table :wheres do |t|
      t.text :text
      t.string :email
      t.integer :game_id


      t.timestamps null: false
    end
  end
end
