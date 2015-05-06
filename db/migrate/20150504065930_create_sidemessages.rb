class CreateSidemessages < ActiveRecord::Migration
  def change
    create_table :sidemessages do |t|
      t.string :contact
      t.string :tel
      t.text :content

      t.timestamps
    end
  end
end
