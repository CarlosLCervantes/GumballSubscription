require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :user_id => 1,
      :item_id => 1,
      :ship_cost => "9.99",
      :tracking_number => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "input#order_user_id[name=?]", "order[user_id]"
      assert_select "input#order_item_id[name=?]", "order[item_id]"
      assert_select "input#order_ship_cost[name=?]", "order[ship_cost]"
      assert_select "input#order_tracking_number[name=?]", "order[tracking_number]"
    end
  end
end
