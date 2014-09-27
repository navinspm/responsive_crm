require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :email => "Email",
      :phone => 1,
      :doorno => "Doorno",
      :street => "Street",
      :city => "City",
      :pincode => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/1/)
    rendered.should match(/Doorno/)
    rendered.should match(/Street/)
    rendered.should match(/City/)
    rendered.should match(/2/)
  end
end
