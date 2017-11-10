require 'rails_helper'

RSpec.describe "baskets/new", type: :view do
  before(:each) do
    assign(:basket, Basket.new(
      :capacity => 1,
      :fill_rate => 1
    ))
  end

  it "renders new basket form" do
    render

    assert_select "form[action=?][method=?]", baskets_path, "post" do

      assert_select "input[name=?]", "basket[capacity]"

      assert_select "input[name=?]", "basket[fill_rate]"
    end
  end
end
