require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :email => "Email",
        :phone => 1,
        :doorno => "Doorno",
        :street => "Street",
        :city => "City",
        :pincode => 2
      ),
      stub_model(Customer,
        :name => "Name",
        :email => "Email",
        :phone => 1,
        :doorno => "Doorno",
        :street => "Street",
        :city => "City",
        :pincode => 2
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Doorno".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
