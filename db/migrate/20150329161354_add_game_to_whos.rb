class AddGameToWhos < ActiveRecord::Migration
  def change
    add_column :whos, :game_id, :integer
  end
end
