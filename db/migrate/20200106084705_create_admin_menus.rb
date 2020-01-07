class CreateAdminMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_menus do |t|
      t.string :name
      t.string :url
      t.string :icon
      t.string :icon_location
      t.string :created_by
      t.string :updated_by
      t.string :enabled
      t.boolean :is_enabled
      t.boolean :is_locked
      t.boolean :is_expired
      t.integer :status
      t.integer :type
      t.integer :parent_id

      t.timestamps
    end
  end
end
