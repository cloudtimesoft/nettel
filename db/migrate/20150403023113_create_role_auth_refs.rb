class CreateRoleAuthRefs < ActiveRecord::Migration
  def change
    create_table :role_auth_refs do |t|
      t.integer :role_id
      t.integer :auth_id

      t.timestamps
    end
    add_index :role_auth_refs, :role_id
    add_index :role_auth_refs, :auth_id
  end
end
