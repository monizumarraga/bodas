require 'rails_helper'

RSpec.describe "presents/edit", type: :view do
  before(:each) do
    @present = assign(:present, Present.create!(
      :name => "MyString",
      :price => 1.5,
      :image => nil,
      :user => nil
    ))
  end

  it "renders the edit present form" do
    render

    assert_select "form[action=?][method=?]", present_path(@present), "post" do

      assert_select "input[name=?]", "present[name]"

      assert_select "input[name=?]", "present[price]"

      assert_select "input[name=?]", "present[image_id]"

      assert_select "input[name=?]", "present[user_id]"
    end
  end
end
