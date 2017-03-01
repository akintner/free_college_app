class University < ApplicationRecord
  validates :name, presence: true
  # validates_uniqueness_of :name, {scope: :city}
  validates :language, presence: true
  validates :visa, presence: true
  
  belongs_to :country
end
