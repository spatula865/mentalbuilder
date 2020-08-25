class AddDetailsToZatsudans < ActiveRecord::Migration[6.0]
  def change
    add_column :zatsudans, :hajimekata1, :integer
    add_column :zatsudans, :hajimekata2, :integer
    add_column :zatsudans, :hajimekata3, :integer
    add_column :zatsudans, :hajimekata4, :integer
    add_column :zatsudans, :hajimekata5, :integer
    add_column :zatsudans, :hajimekata6, :integer
  end
end
