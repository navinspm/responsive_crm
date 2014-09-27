require 'spec_helper'

describe "cars/new" do
  before(:each) do
    assign(:car, stub_model(Car,
      :name => "MyString",
      :price => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cars_path, "post" do
      assert_select "input#car_name[name=?]", "car[name]"
      assert_select "input#car_price[name=?]", "car[price]"
      assert_select "textarea#car_description[name=?]", "car[description]"
    end
  end
end
