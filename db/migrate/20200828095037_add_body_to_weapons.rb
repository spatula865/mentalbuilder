class AddBodyToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :body, :text
  end
end
