class User < ActiveRecord::Base
  has_many :contact
  belongs_to :tariff_standard
end
