class AddUserIdToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :user_id, :integer
  end
end
