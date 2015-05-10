class Sidecontent < ActiveRecord::Base
  belongs_to :admin
  belongs_to :sidecla
  has_many :sidecomments,dependent: :destroy
end
