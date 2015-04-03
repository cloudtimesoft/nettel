class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :last_name
      t.string :first_name
      t.string :content

      t.timestamps
    end
    add_index :contacts, :user_id
  end
end
