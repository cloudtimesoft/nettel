class PhoneNum < ActiveRecord::Base
  has_many :records
  belongs_to :contact
end
