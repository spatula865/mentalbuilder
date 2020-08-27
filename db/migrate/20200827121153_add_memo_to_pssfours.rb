class AddMemoToPssfours < ActiveRecord::Migration[6.0]
  def change
    add_column :pssfours, :memo, :text
  end
end
