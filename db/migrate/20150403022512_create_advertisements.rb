class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :pic_str
      t.string :link_str
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :status
      t.integer :type

      t.timestamps
    end
  end
end
