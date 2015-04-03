class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :tariff_standard_id
      t.string :user_name
      t.string :password_digest
      t.integer :usr_status
      t.string :auth_code
      t.timestamp :auth_code_time
      t.integer :dial_way
      t.integer :show_num
      t.string :area_code
      t.float :balance

      t.timestamps
    end
      add_index :users, :tariff_standard_id
  end
end
