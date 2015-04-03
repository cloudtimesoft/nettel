class Auth < ActiveRecord::Base
  has_many :role_auth_ref
end
