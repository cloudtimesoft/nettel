class CreateAuths < ActiveRecord::Migration
  def change
    create_table :auths do |t|
      t.string :name
      t.string :url
      t.integer :parent_id

      t.timestamps
    end
      add_index :auths, :parent_id
  end
end
