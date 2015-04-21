class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
      t.integer :title
      t.integer :types
      t.text :content
      t.timestamp :starttime
      t.timestamp :endtime
      t.integer :status
      t.integer :sort

      t.timestamps
    end
  end
end
