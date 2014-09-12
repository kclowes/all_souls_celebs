class Celebrant < ActiveRecord::Base
  validates :name, presence: true
end