require 'spec_helper'

describe "spares/new" do
  before(:each) do
    assign(:spare, stub_model(Spare,
      :spare => "MyString",
      :car => "MyString",
      :year => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new spare form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spares_path, "post" do
      assert_select "input#spare_spare[name=?]", "spare[spare]"
      assert_select "input#spare_car[name=?]", "spare[car]"
      assert_select "input#spare_year[name=?]", "spare[year]"
      assert_select "input#spare_email[name=?]", "spare[email]"
      assert_select "input#spare_phone[name=?]", "spare[phone]"
    end
  end
end
