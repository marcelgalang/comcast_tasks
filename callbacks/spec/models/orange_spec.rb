require 'rails_helper'

RSpec.describe Orange, :type => :model do
  orange = Orange.create

  it "is valid with valid attributes"do
    expect(orange).to be_valid
  end


  describe "#is_apple?"
  orange = Orange.create
    it "should not call 'make_juice'" do
    expect(orange.is_apple?).to be false
  end

end