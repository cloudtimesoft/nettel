class Role < ActiveRecord::Base
  has_many :role_auth_refs
  has_many :admin_role_refs
end
