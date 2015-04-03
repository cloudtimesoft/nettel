class CreateMakeCards < ActiveRecord::Migration
  def change
    create_table :make_cards do |t|
      t.integer :admin_id
      t.integer :card_type
      t.string :batch
      t.integer :card_len
      t.timestamp :time
      t.float :card_sum
      t.integer :amount
      t.string :content
      t.integer :giving

      t.timestamps
    end
      add_index :make_cards, :admin_id
  end
end
