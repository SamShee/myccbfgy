class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_users do |t|
      t.string :username
      t.string :password_digest
      t.string :created_by
      t.string :updated_by
      t.string :email
      t.boolean :gender
      t.string :mobile
      t.string :enabled
      t.string :real_name
      t.boolean :is_enabled
      t.boolean :is_locked
      t.boolean :is_expired
      t.integer :status
      t.integer :type

      t.timestamps
    end
    add_index :admin_users, :email, unique: true
  end
end
