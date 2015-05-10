class AddIsdefaultToTariffStandards < ActiveRecord::Migration
  def change
    add_column :tariff_standards, :isdefault, :integer
  end
end
