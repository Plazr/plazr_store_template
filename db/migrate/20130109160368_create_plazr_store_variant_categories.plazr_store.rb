# This migration comes from plazr_store (originally 20121114152819)
class CreatePlazrStoreVariantCategories < ActiveRecord::Migration
  def change
    create_table :plazr_store_variant_categories do |t|
      t.string :name, :null => false
      t.text :description

      t.timestamps
    end
  end
end
