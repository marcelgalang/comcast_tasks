require 'rails_helper'

RSpec.describe "baskets/index", type: :view do
  before(:each) do
    assign(:baskets, [
      Basket.create!(
        :capacity => 2,
        :fill_rate => 3
      ),
      Basket.create!(
        :capacity => 2,
        :fill_rate => 3
      )
    ])
  end

  it "renders a list of baskets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
