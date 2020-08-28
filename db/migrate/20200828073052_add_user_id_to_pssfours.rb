class AddUserIdToPssfours < ActiveRecord::Migration[6.0]
  def change
    add_column :pssfours, :user_id, :integer
  end
end
