class TariffStandard < ActiveRecord::Base
  has_many :basic_charges
  has_many :time_charges
  has_many :uesrs
end
