class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :picstr
      t.string :linkstr
      t.timestamp :starttime
      t.timestamp :endtime
      t.integer :status
      t.integer :types

      t.timestamps
    end
  end
end
