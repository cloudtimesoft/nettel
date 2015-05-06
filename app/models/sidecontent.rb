class Sidecontent < ActiveRecord::Base
  belongs_to :admin
  has_many :sidecomment
end
