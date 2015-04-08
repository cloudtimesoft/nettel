class Auth < ActiveRecord::Base
  has_many :role_auth_refs
  has_many :roles, through: :role_auth_refs
end
