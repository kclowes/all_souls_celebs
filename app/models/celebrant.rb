class Celebrant < ActiveRecord::Base
  validates :name, presence: true
  has_many :tasks, through: :duties
  has_many :duties
end