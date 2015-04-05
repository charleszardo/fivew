class CreateSees < ActiveRecord::Migration
  def change
    create_table :sees do |t|
      t.text :text
      t.string :email
      t.integer :game_id
      
      t.timestamps null: false
    end
  end
end
