# This migration comes from plazr_store (originally 20121211154010)
class AddMultimediaTypeIdToMultimedia < ActiveRecord::Migration
  def change
    add_column :plazr_store_multimedia, :multimedia_type_id, :integer

    add_index :plazr_store_multimedia, :multimedia_type_id
  end
end
