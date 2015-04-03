class CreateCallCaches < ActiveRecord::Migration
  def change
    create_table :call_caches do |t|
      t.integer :user_id
      t.timestamp :begin_time

      t.timestamps
    end
    add_index :call_caches, :user_id
  end
end
