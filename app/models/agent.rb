class Agent < ApplicationRecord

  def total
    destination_total = 0
    self.destinations.each do |dest|
      destination_total = destination_total + dest.price
    end
    destination_total
  end

  has_many :users
  has_many :destinations

end
