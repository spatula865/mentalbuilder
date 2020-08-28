class AddUserIdToThermometers < ActiveRecord::Migration[6.0]
  def change
    add_column :thermometers, :user_id, :integer
  end
end
