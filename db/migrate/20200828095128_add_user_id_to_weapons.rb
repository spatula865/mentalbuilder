class AddUserIdToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :user_id, :integer
  end
end
