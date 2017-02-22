require 'rails_helper'

RSpec.describe Country, type: :model do
  context "validations" do 
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  context "associations" do 
    it { should respond_to(:region) }
    it { should respond_to(:universities) }
  end
end
