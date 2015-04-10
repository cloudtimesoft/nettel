class Admin < ActiveRecord::Base
  has_many :make_cards
  has_many :roles, through: :admin_role_refs
  has_many :admin_role_refs,dependent: :destroy
  has_secure_password
end
