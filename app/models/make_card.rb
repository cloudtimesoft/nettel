class MakeCard < ActiveRecord::Base
  has_many :rechargeable_cards
  belongs_to :admin
end
