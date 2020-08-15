class CreatePss4s < ActiveRecord::Migration[6.0]
  def change
    create_table :pss4s do |t|
      t.integer :question1
      t.integer :question2
      t.integer :question3
      t.integer :question4

      t.timestamps
    end
  end
end
