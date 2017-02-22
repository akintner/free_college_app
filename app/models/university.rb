class University < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :country
end
