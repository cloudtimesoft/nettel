class Contact < ActiveRecord::Base
  has_many :phone_nums
  belongs_to :user
end
