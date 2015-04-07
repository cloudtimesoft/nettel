class User < ActiveRecord::Base
  has_many :contacts
  belongs_to :tariff_standard
end
