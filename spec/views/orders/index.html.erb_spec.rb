require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :user_id => 1,
        :item_id => 2,
        :ship_cost => "9.99",
        :tracking_number => "Tracking Number"
      ),
      stub_model(Order,
        :user_id => 1,
        :item_id => 2,
        :ship_cost => "9.99",
        :tracking_number => "Tracking Number"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Tracking Number".to_s, :count => 2
  end
end
