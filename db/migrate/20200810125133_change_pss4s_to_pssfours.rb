class ChangePss4sToPssfours < ActiveRecord::Migration[6.0]
  def change
    rename_table :pss4s, :pssfours
  end
end
