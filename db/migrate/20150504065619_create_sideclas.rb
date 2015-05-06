class CreateSideclas < ActiveRecord::Migration
  def change
    create_table :sideclas do |t|
      t.string :keywords
      t.string :title
      t.string :renderto

      t.timestamps
    end
  end
end
