require 'rails_helper'
require 'pry'

RSpec.describe Basket, type: :model do
  baskets = Basket.all
  test_basket = baskets.sample
  new_basket = Basket.create
  app = Apple.new(variety: "Gala")


  it "is valid with valid attributes"do
      expect(test_basket).to be_valid
  end

  describe test_basket do
    it { should be_instance_of(Basket) }
    end

  describe "#find_basket"
  it "should return a basket" do
    expect(test_basket).to be_an_instance_of(Basket)
  end

  #additional testing to complete
  # describe "#find_zero_count"
  #   it "should return a basket" do
  #     expect(new_basket).to receive(:find_zero_count)
  #     new_basket.find_zero_count(baskets)
  #     binding.pry
  #   end

  #   it "should have a zero count" do
  #     expect(basket.apples.count.).to eq true
  #     binding.pry
  #   end

  # describe "#find_same_variety"
  #   it "should return a basket" do
  #     expect(basket).to receive(:find_same_variety)
  #     basket.find_same_variety(app, baskets)
  #     # binding.pry
  # end



end
