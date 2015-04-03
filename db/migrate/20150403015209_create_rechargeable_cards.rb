class CreateRechargeableCards < ActiveRecord::Migration
  def change
    create_table :rechargeable_cards do |t|
      t.string :pwd
      t.integer :make_card_id
      t.string :card_number
      t.integer :card_sum
      t.timestamp :effective_time
      t.integer :card_type
      t.timestamp :end_time
      t.string :content
      t.integer :giving
      t.integer :failure

      t.timestamps
    end
    add_index :rechargeable_cards, :make_card_id
  end
end
