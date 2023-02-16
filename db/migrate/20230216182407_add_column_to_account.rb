class AddColumnToAccount < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :bank, null: false, foreign_key: true
    add_reference :accounts, :provider, null: false, foreign_key: true
  end
end
