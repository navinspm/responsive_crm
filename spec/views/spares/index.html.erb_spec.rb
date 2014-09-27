require 'spec_helper'

describe "spares/index" do
  before(:each) do
    assign(:spares, [
      stub_model(Spare,
        :spare => "Spare",
        :car => "Car",
        :year => "Year",
        :email => "Email",
        :phone => "Phone"
      ),
      stub_model(Spare,
        :spare => "Spare",
        :car => "Car",
        :year => "Year",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of spares" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Spare".to_s, :count => 2
    assert_select "tr>td", :text => "Car".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
