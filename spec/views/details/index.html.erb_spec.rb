require 'rails_helper'

RSpec.describe "details/index", type: :view do
  before(:each) do
    assign(:details, [
      Detail.create!(
        :type => "Type",
        :name => "Name",
        :place => "Place",
        :contact => "Contact",
        :extra => "MyText",
        :user => nil
      ),
      Detail.create!(
        :type => "Type",
        :name => "Name",
        :place => "Place",
        :contact => "Contact",
        :extra => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of details" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
