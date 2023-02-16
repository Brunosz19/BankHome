class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.integer :nid
      t.string :contact_name
      t.integer :phone

      t.timestamps
    end
  end
end
