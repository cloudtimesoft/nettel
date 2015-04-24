class TariffStandard < ActiveRecord::Base
  has_many :basic_charges,dependent: :destroy
  has_many :time_charges,dependent: :destroy
  has_many :users



  def TariffStandard.search(search)
    order('content').where('content LIKE ?', "%#{search}%")
    order('name').where('name LIKE ?', "%#{search}%")
  end

end
