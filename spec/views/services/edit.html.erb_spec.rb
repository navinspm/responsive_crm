require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :name => "MyString",
      :mobileno => "MyString",
      :email => "MyString",
      :car => "MyString",
      :year => 1,
      :problem => "MyText"
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_path(@service), "post" do
      assert_select "input#service_name[name=?]", "service[name]"
      assert_select "input#service_mobileno[name=?]", "service[mobileno]"
      assert_select "input#service_email[name=?]", "service[email]"
      assert_select "input#service_car[name=?]", "service[car]"
      assert_select "input#service_year[name=?]", "service[year]"
      assert_select "textarea#service_problem[name=?]", "service[problem]"
    end
  end
end
