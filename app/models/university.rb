class University < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :language, presence: true
  validates :visa, presence: true
  
  belongs_to :country
end
