require 'pry'

class Basket < ApplicationRecord
  has_many :apples

  BASKETS = Basket.all

  def self.find_basket(variety)
    basket = find_zero_count || find_same_variety(variety)
    if basket_space?(basket)
      basket
    else
      find_basket(variety)
    end
  end

  def self.find_zero_count
    BASKETS.find do |basket|
      basket.apples.count == 0 ? basket : false
    end
  end

  def self.find_same_variety(variety)
    BASKETS.detect do |basket|
      basket.apples.find{|apple| apple.variety == variety} &&
      basket.capacity.to_i >= basket.apples.count
    end
  end

  def self.calculate_fill_rate(basket)
    basket.fill_rate = ((basket.apples.count.to_f/basket.capacity.to_f)*100).round(2)
    basket.fill_rate
  end

  def self.full?(basket)
    basket.fill_rate.to_i >= 100
  end

  def self.basket_space?(basket)
    basket.capacity - basket.apples.count > 0
  end

  def self.next_available_basket(count)
    BASKETS.each do |basket|
     if basket_space?(basket)
      basket
    elsif
      full?(basket)
      next
    else
      puts "All baskets are full. We couldn't find the place for #{count} apples"
      end
    end
  end

  def self.add_apple_to_basket(variety, count)
    count.times do |i|
      app = Apple.new(variety: variety)
      @basket = find_basket(variety)
        app.basket_id = @basket.id
        app.save
      count = count -1
      calculate_fill_rate(@basket)
      puts "#{count+1}. #{app.variety} was added to Basket Number #{@basket.id}. Basket Number #{@basket.id} is #{@basket.fill_rate} % full."
      next_available_basket(count)
    end
  end
end
