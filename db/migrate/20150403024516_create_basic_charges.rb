class CreateBasicCharges < ActiveRecord::Migration
  def change
    create_table :basic_charges do |t|
      t.integer :tariff_standard_id
      t.float :s_charges
      t.float :c_charges

      t.timestamps
    end
    add_index :basic_charges, :tariff_standard_id
  end
end
