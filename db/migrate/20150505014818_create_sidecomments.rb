class CreateSidecomments < ActiveRecord::Migration
  def change
    create_table :sidecomments do |t|
      t.integer :sidecontent_id
      t.string :nickname
      t.string :title
      t.text :content
      t.integer :star
      t.timestamp :time

      t.timestamps
    end
    add_index :sidecomments, :sidecontent_id
  end
end
