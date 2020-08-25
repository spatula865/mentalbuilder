class CreateZatsudans < ActiveRecord::Migration[6.0]
  def change
    create_table :zatsudans do |t|

      t.timestamps
    end
  end
end
