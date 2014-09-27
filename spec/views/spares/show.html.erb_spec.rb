require 'spec_helper'

describe "spares/show" do
  before(:each) do
    @spare = assign(:spare, stub_model(Spare,
      :spare => "Spare",
      :car => "Car",
      :year => "Year",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Spare/)
    rendered.should match(/Car/)
    rendered.should match(/Year/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
  end
end
