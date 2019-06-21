class CreateEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :estates do |t|
      t.text "property_name"
      t.integer "rent"
      t.text "address"
      t.integer "property_age"
      t.text "content"

      t.timestamps
    end
  end
end
