require 'rails_helper'

RSpec.describe Region, type: :model do
  context "validations" do 
    it { is_expected.to validate_presence_of(:region) }
    it { is_expected.to validate_uniqueness_of(:region) }
  end

  context "assocations" do 
    it { should respond_to(:countries) }
  end
end