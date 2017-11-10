require 'rails_helper'

RSpec.describe Blending, :type => :module do
  apple = Apple.new
  orange = Orange.new

  it "triggers make_juice on save for only Apple Class" do
    expect(apple).to receive(:make_juice)
    apple.save
    orange.save
  end
end
