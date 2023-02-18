class AddColumnToAccount < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :provider, null: true, foreign_key: true
  end
end
