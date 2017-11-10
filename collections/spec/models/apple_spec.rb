require 'rails_helper'
require 'pry'

RSpec.describe Apple, :type => :model do
  basket = Basket.create
  apple = Apple.new()
  apple.basket_id = Basket.last.id
  apple.save


  it "is valid with valid attributes"do
      expect(apple).to be_valid
    end
end
