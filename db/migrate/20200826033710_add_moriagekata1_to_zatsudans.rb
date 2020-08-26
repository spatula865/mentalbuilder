class AddMoriagekata1ToZatsudans < ActiveRecord::Migration[6.0]
  def change
    add_column :zatsudans, :moriagekata1, :integer
    add_column :zatsudans, :moriagekata2, :integer
    add_column :zatsudans, :moriagekata3, :integer
    add_column :zatsudans, :moriagekata4, :integer
    add_column :zatsudans, :moriagekata5, :integer
    add_column :zatsudans, :moriagekata6, :integer
    add_column :zatsudans, :moriagekata7, :integer
    add_column :zatsudans, :moriagekata8, :integer
    add_column :zatsudans, :moriagekata9, :integer
  end
end
