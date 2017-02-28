require 'rails_helper'

RSpec.describe University, type: :model do
  context "validations" do 
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:visa) }  
    it { is_expected.to validate_presence_of(:language) }
end

  context "associations" do 
    it { should respond_to(:country) }
  end
end
