class CreateThermometers < ActiveRecord::Migration[6.0]
  def change
    create_table :thermometers do |t|
      t.integer :temperature
      t.timestamps
    end
  end
end
