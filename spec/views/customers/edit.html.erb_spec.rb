require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "MyString",
      :email => "MyString",
      :phone => 1,
      :doorno => "MyString",
      :street => "MyString",
      :city => "MyString",
      :pincode => 1
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "input#customer_email[name=?]", "customer[email]"
      assert_select "input#customer_phone[name=?]", "customer[phone]"
      assert_select "input#customer_doorno[name=?]", "customer[doorno]"
      assert_select "input#customer_street[name=?]", "customer[street]"
      assert_select "input#customer_city[name=?]", "customer[city]"
      assert_select "input#customer_pincode[name=?]", "customer[pincode]"
    end
  end
end
