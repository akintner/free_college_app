class University < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :application_fee, presence: true
  validates :tuition_fee, presence: true
  validates :visa, presence: true
  
  belongs_to :country
end
