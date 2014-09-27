require 'spec_helper'

describe "services/index" do
  before(:each) do
    assign(:services, [
      stub_model(Service,
        :name => "Name",
        :mobileno => "Mobileno",
        :email => "Email",
        :car => "Car",
        :year => 1,
        :problem => "MyText"
      ),
      stub_model(Service,
        :name => "Name",
        :mobileno => "Mobileno",
        :email => "Email",
        :car => "Car",
        :year => 1,
        :problem => "MyText"
      )
    ])
  end

  it "renders a list of services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mobileno".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Car".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
