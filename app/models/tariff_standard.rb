class TariffStandard < ActiveRecord::Base
  has_many :basic_charges,dependent: :destroy
  has_many :time_charges,dependent: :destroy
  has_many :uesrs
end
