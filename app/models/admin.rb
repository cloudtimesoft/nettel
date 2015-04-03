class Admin < ActiveRecord::Base
  has_many :make_card
  has_many :admin_role_ref
end
