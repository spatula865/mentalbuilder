class AddImageToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :image, :string
  end
end
