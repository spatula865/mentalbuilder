class AddMemoToIfthens < ActiveRecord::Migration[6.0]
  def change
    add_column :ifthens, :memo, :text
  end
end
