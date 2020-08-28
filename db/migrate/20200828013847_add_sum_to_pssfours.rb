class AddSumToPssfours < ActiveRecord::Migration[6.0]
  def change
    add_column :pssfours, :sum, :integer
  end
end
