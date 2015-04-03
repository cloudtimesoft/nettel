class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :content
      t.integer :is_admin
      t.integer :role_status

      t.timestamps
    end
  end
end
