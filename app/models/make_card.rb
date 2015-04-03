class MakeCard < ActiveRecord::Base
  has_many :rechargeable_card
  belongs_to :admin
end
