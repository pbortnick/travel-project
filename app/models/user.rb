class User < ApplicationRecord
  belongs_to :agent, optional: true
  has_many :destinations, through: :agent

  devise :database_authenticatable, :registerable, :rememberable, :validatable
end
