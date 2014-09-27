require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :name => "Name",
      :mobileno => "Mobileno",
      :email => "Email",
      :car => "Car",
      :year => 1,
      :problem => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Mobileno/)
    rendered.should match(/Email/)
    rendered.should match(/Car/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
