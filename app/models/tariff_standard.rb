class TariffStandard < ActiveRecord::Base
  has_many :basic_charge
  has_many :time_charge
  has_many :uesr
end
