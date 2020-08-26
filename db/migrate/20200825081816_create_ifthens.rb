class CreateIfthens < ActiveRecord::Migration[6.0]
  def change
    create_table :ifthens do |t|
      t.text :ifthen
      t.text :todo

      t.timestamps
    end
  end
end
