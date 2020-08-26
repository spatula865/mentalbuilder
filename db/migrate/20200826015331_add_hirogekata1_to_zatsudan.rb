class AddHirogekata1ToZatsudan < ActiveRecord::Migration[6.0]
  def change
    add_column :zatsudans, :hirogekata1, :integer
    add_column :zatsudans, :hirogekata2, :integer
    add_column :zatsudans, :hirogekata3, :integer
    add_column :zatsudans, :hirogekata4, :integer
    add_column :zatsudans, :hirogekata5, :integer
    add_column :zatsudans, :hirogekata6, :integer
    add_column :zatsudans, :hirogekata7, :integer
    add_column :zatsudans, :hirogekata8, :integer
  end
end
