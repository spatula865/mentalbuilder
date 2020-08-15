class AddMemoToThermometers < ActiveRecord::Migration[6.0]
  def change
    add_column :thermometers, :memo, :text
  end
end
