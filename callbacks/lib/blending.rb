module Blending
  extend ActiveSupport::Concern

  included do
    after_save :make_juice, :if => :is_apple?
  end


  def make_juice
    puts "#{self.class.name} juice made"
  end

  def is_apple?
    self.class.name.demodulize == "Apple"
  end

end