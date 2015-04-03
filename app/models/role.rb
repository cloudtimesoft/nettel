class Role < ActiveRecord::Base
  has_many :role_auth_ref
  has_many :admin_role_ref
end
