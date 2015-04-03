class CreateAdminRoleRefs < ActiveRecord::Migration
  def change
    create_table :admin_role_refs do |t|
      t.integer :admin_id
      t.integer :role_id

      t.timestamps
    end
    add_index :admin_role_refs, :admin_id
    add_index :admin_role_refs, :role_id
  end
end
