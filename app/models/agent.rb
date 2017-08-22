class Agent < ActiveRecord::Base

  has_many :users
  has_many :destinations
  
end
