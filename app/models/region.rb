class Region < ApplicationRecord
  validates :region, presence: true, uniqueness: true
  
  has_many :countries
end
