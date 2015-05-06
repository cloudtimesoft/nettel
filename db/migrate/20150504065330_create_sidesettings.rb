class CreateSidesettings < ActiveRecord::Migration
  def change
    create_table :sidesettings do |t|
      t.string :name
      t.string :logo
      t.string :tel
      t.string :address
      t.string :icp

      t.timestamps
    end
  end
end
