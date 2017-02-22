class Course < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name, {scope: :university_id}
  validates :language, presence: true

  belongs_to :university 
end
