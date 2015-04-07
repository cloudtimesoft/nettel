class Admin < ActiveRecord::Base
  has_many :make_cards
  has_many :admin_role_refs
end
