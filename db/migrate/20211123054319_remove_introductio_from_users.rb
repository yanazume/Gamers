class RemoveIntroductioFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :Introductio, :text
  end
end
