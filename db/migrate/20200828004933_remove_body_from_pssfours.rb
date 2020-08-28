class RemoveBodyFromPssfours < ActiveRecord::Migration[6.0]
  def change
    remove_column :pssfours, :body, :integer
  end
end
