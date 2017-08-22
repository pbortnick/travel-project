class User < ActiveRecord::Base
  belongs_to :agent
  has_many :destinations, through: :agent

  has_secure_password
end
