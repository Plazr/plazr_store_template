# This migration comes from plazr_store (originally 20121114155831)
class CreatePlazrStoreMultimedia < ActiveRecord::Migration
  def change
    create_table :plazr_store_multimedia do |t|
      t.text :caption
      t.integer :size
      t.text :link

      t.timestamps
    end
  end
end
