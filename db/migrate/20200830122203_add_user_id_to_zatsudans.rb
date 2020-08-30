class AddUserIdToZatsudans < ActiveRecord::Migration[6.0]
  def change
    add_column :zatsudans, :user_id, :integer
  end
end
