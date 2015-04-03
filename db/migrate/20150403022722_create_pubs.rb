class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
      t.string :title
      t.integer :type
      t.text :content
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :status
      t.integer :sort

      t.timestamps
    end
  end
end
