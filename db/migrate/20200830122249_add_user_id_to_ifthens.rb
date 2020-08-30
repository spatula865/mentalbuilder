class AddUserIdToIfthens < ActiveRecord::Migration[6.0]
  def change
    add_column :ifthens, :user_id, :integer
  end
end
