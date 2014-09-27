require 'spec_helper'

describe "cars/edit" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :name => "MyString",
      :price => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", car_path(@car), "post" do
      assert_select "input#car_name[name=?]", "car[name]"
      assert_select "input#car_price[name=?]", "car[price]"
      assert_select "textarea#car_description[name=?]", "car[description]"
    end
  end
end
