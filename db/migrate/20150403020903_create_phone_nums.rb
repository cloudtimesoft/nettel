class CreatePhoneNums < ActiveRecord::Migration
  def change
    create_table :phone_nums do |t|
      t.integer :contact_id
      t.integer :type
      t.integer :is_primary
      t.string :attribution
      t.string :operator

      t.timestamps
    end
    add_index :phone_nums, :contact_id
  end
end
