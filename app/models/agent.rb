class Agent < ApplicationRecord

  has_many :users
  has_many :destinations

end
