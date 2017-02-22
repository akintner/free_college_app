class Country < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :universities
  belongs_to :region
end
