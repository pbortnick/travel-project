class Destination < ActiveRecord::Base

  belongs_to :agent
  has_many :users, through: :agent

end
