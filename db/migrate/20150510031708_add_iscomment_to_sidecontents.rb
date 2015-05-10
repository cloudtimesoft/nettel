class AddIscommentToSidecontents < ActiveRecord::Migration
  def change
    add_column :sidecontents, :iscomment, :integer
  end
end
