class CreateSidecontents < ActiveRecord::Migration
  def change
    create_table :sidecontents do |t|
      t.integer :sidecla_id
      t.string :title
      t.string :inpaper
      t.float :oprice
      t.float :pprice
      t.text :content
      t.timestamp :time
      t.integer :admin_id

      t.timestamps
    end
    add_index :sidecontents, :admin_id
    add_index :sidecontents, :sidecla_id
  end
end
