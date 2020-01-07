json.extract! admin_menu, :id, :name, :url, :icon, :icon_location, :created_by, :updated_by, :enabled, :is_enabled, :is_locked, :is_expired, :status, :type, :parent_id, :created_at, :updated_at
json.url admin_menu_url(admin_menu, format: :json)
