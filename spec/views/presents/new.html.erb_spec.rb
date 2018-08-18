require 'rails_helper'

RSpec.describe "presents/new", type: :view do
  before(:each) do
    assign(:present, Present.new(
      :name => "MyString",
      :price => 1.5,
      :image => nil,
      :user => nil
    ))
  end

  it "renders new present form" do
    render

    assert_select "form[action=?][method=?]", presents_path, "post" do

      assert_select "input[name=?]", "present[name]"

      assert_select "input[name=?]", "present[price]"

      assert_select "input[name=?]", "present[image_id]"

      assert_select "input[name=?]", "present[user_id]"
    end
  end
end
