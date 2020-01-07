class CreateAdminHellos < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_hellos do |t|
      t.string :name

      t.timestamps
    end
  end
end
