# This migration comes from plazr_store (originally 20121210221136)
class CreatePlazrStoreMultimediaType < ActiveRecord::Migration
  def change
    create_table :plazr_store_multimedia_type do |t|
      t.text :description
      
      t.timestamps
    end
  end
end
