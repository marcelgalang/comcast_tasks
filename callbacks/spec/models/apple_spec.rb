require 'rails_helper'

RSpec.describe Apple, :type => :model do
  apple = Apple.create

    it "is valid with valid attributes"do
      expect(apple).to be_valid
    end

    describe apple do
    it { should be_instance_of(Apple) }
    end

    describe "#make_juice"
      it "should call 'make_juice'" do
      expect(apple).to receive(:make_juice)
      apple.make_juice
    end

      it 'is called on save with passing validations' do
      expect(apple).to receive(:make_juice)
      apple.save
    end

    describe "#is_apple?"
      it "should get true for'make_juice'" do
      expect(apple.is_apple?).to be true

  end

end