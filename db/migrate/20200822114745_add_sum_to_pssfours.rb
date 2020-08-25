class AddSumToPssfours < ActiveRecord::Migration[6.0]
  def change
    add_column :pssfours, :body, :integer
  end
end
