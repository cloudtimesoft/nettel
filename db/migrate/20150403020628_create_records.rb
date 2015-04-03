class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :phone_num_id
      t.timestamp :time
      t.float :cost
      t.timestamp :start_time
      t.integer :tag
      t.integer :user_delete

      t.timestamps
    end
      add_index :records, :phone_num_id
  end
end
