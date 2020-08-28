class AddMemoToZatsudans < ActiveRecord::Migration[6.0]
  def change
    add_column :zatsudans, :memo, :text
  end
end
