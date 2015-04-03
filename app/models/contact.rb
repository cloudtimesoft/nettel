class Contact < ActiveRecord::Base
  has_many :phone_num
  belongs_to :user
end
