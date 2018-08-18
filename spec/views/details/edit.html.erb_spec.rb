require 'rails_helper'

RSpec.describe "details/edit", type: :view do
  before(:each) do
    @detail = assign(:detail, Detail.create!(
      :type => "",
      :name => "MyString",
      :place => "MyString",
      :contact => "MyString",
      :extra => "MyText",
      :user => nil
    ))
  end

  it "renders the edit detail form" do
    render

    assert_select "form[action=?][method=?]", detail_path(@detail), "post" do

      assert_select "input[name=?]", "detail[type]"

      assert_select "input[name=?]", "detail[name]"

      assert_select "input[name=?]", "detail[place]"

      assert_select "input[name=?]", "detail[contact]"

      assert_select "textarea[name=?]", "detail[extra]"

      assert_select "input[name=?]", "detail[user_id]"
    end
  end
end
