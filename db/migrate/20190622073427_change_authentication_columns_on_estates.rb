class ChangeAuthenticationColumnsOnEstates < ActiveRecord::Migration[5.0]
  def change
    t.text "property_name", :null => false
    t.integer "rent", :null => false
  end
end
