# This migration comes from plazr_store (originally 20121114121401)
class CreatePlazrStoreProperties < ActiveRecord::Migration
  def change
    create_table :plazr_store_properties do |t|
      t.string :id_name
      t.string :display_name, :null => false

      t.timestamps
    end
  end
end
