class CreateAreaCodeDetails < ActiveRecord::Migration
  def change
    create_table :area_code_details do |t|
      t.integer :province_id
      t.string :name
      t.string :area_code

      t.timestamps
    end
      add_index :area_code_details, :province_id
  end
end
