class CreateRechargeableRecords < ActiveRecord::Migration
  def change
    create_table :rechargeable_records do |t|
      t.integer :user_id
      t.timestamp :prepaid_time
      t.float :balance
      t.integer :type
      t.string :content
      t.timestamp :end_time
      t.string :card_num

      t.timestamps
    end
      add_index :rechargeable_records, :user_id
  end
end
