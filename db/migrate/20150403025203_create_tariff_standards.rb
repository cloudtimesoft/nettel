class CreateTariffStandards < ActiveRecord::Migration
  def change
    create_table :tariff_standards do |t|
      t.string :name
      t.text :content
      t.float :minus_amount

      t.timestamps
    end
  end
end
