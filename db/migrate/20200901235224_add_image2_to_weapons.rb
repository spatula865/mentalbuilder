class AddImage2ToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :image2, :string
  end
end
