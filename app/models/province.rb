class Province < ActiveRecord::Base
  has_many :area_code_detail
end
