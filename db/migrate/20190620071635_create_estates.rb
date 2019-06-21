class CreateEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :estates do |t|

      t.timestamps
    end
  end
end
