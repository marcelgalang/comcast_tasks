require 'rails_helper'

RSpec.describe "baskets/show", type: :view do
  before(:each) do
    @basket = assign(:basket, Basket.create!(
      :capacity => 2,
      :fill_rate => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
