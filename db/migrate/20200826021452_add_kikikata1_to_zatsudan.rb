class AddKikikata1ToZatsudan < ActiveRecord::Migration[6.0]
  def change
    add_column :zatsudans, :kikikata1, :integer
    add_column :zatsudans, :kikikata2, :integer
    add_column :zatsudans, :kikikata3, :integer
    add_column :zatsudans, :kikikata4, :integer
    add_column :zatsudans, :kikikata5, :integer
    add_column :zatsudans, :kikikata6, :integer
  end
end
