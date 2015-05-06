class CreateSideadvers < ActiveRecord::Migration
  def change
    create_table :sideadvers do |t|
      t.integer :local
      t.string :linkto
      t.integer :isenabled

      t.timestamps
    end
  end
end
