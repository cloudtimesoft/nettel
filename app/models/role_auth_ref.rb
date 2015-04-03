class RoleAuthRef < ActiveRecord::Base
  belongs_to :role
  belongs_to :auth
end
