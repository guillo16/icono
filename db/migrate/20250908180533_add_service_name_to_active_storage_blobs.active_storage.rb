class AddServiceNameToActiveStorageBlobs < ActiveRecord::Migration[6.0]
  def up
    return unless table_exists?(:active_storage_blobs)

    unless column_exists?(:active_storage_blobs, :service_name)
      # Add column with nullable first
      add_column :active_storage_blobs, :service_name, :string, null: true

      # Fill existing blobs with configured service
      configured_service = Rails.application.config.active_storage.service.to_s
      ActiveStorage::Blob.unscoped.update_all(service_name: configured_service)

      # Now make column non-nullable
      change_column_null :active_storage_blobs, :service_name, false
    end
  end

  def down
    return unless table_exists?(:active_storage_blobs)

    remove_column :active_storage_blobs, :service_name
  end
end
