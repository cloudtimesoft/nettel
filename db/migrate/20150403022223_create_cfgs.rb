class CreateCfgs < ActiveRecord::Migration
  def change
    create_table :cfgs do |t|
      t.float :give_cost
      t.string :company_name
      t.string :sales_tel
      t.string :service_tel
      t.string :gateway
      t.text :content

      t.timestamps
    end
  end
end
