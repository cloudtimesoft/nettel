class AddAttachmentAvatarToAdvertisements < ActiveRecord::Migration
  def self.up
    change_table :advertisements do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :advertisements, :avatar
  end
end
