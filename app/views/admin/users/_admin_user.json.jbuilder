json.extract! admin_user, :id, :username, :created_by, :updated_by, :email, :gender, :mobile, :enabled, :real_name, :is_enabled, :is_locked, :is_expired, :status, :type, :created_at, :updated_at
json.url admin_user_url(admin_user, format: :json)
