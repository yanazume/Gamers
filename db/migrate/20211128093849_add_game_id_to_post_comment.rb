class AddGameIdToPostComment < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :game_id, :integer
  end
end
