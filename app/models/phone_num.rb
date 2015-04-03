class PhoneNum < ActiveRecord::Base
  has_many :record
  belongs_to :contact
end
