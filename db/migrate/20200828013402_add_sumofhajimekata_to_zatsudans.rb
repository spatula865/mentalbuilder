class AddSumofhajimekataToZatsudans < ActiveRecord::Migration[6.0]
  def change
    add_column :zatsudans, :sumofhajimekata, :integer
    add_column :zatsudans, :sumofhirogekata, :integer
    add_column :zatsudans, :sumofkikikata, :integer
    add_column :zatsudans, :sumofmoriagekata, :integer
  end
end
