class CreateRechargeableRecords < ActiveRecord::Migration
  def change
    create_table :rechargeable_records do |t|
      t.integer :user_id
      t.timestamp :preaidtime
      t.float :balance
      t.integer :types
      t.string :content
      t.timestamp :endtime
      t.string :cardnum

      t.timestamps
    end
  end
end
