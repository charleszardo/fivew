class CreateWhos < ActiveRecord::Migration
  def change
    create_table :whos do |t|
      t.string :email
      t.text :text
      
      t.timestamps null: false
    end
  end
end
