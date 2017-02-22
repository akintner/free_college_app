require 'rails_helper'

RSpec.describe Course, type: :model do
  context "validations" do 
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:language) }
    it { is_expected.to validate_uniqueness_of(:name).scoped_to(:university_id) }
  end

  context "associations" do 
    it { should respond_to(:university) }
  end
end
