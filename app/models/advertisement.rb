class Advertisement < ActiveRecord::Base

  before_create :uuid_name
  before_update :uuid_name
  def uuid_name
    extension = File.extname(avatar_file_name).downcase
    basename = SecureRandom.uuid
    self.avatar.instance_write(:file_name, "#{basename}#{extension}")
  end

  has_attached_file :avatar,

                    :url => "/advertisement/:basename.:extension"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\z/


end
