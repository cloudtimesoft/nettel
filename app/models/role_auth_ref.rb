class RoleAuthRef < ActiveRecord::Base
  belongs_to :auth
  belongs_to :role
end
