class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :NIT
      t.string :contact_name
      t.string :phone

      t.timestamps
    end
  end
end
