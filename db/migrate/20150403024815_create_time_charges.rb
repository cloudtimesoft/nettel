class CreateTimeCharges < ActiveRecord::Migration
  def change
    create_table :time_charges do |t|
      t.integer :tariff_standard_id
      t.float :s_charges
      t.float :c_charges
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
    add_index :time_charges,:tariff_standard_id
  end
end
