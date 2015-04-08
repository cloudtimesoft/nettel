class CreateRoleAuthRefs < ActiveRecord::Migration
  def change
    create_table :role_auth_refs do |t|
      t.integer :role_id
      t.integer :auth_id
      t.integer :status

      t.timestamps
    end
  end
end
