class CreateAdminChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_channels do |t|
      t.string :name
      t.integer :parent_id
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
