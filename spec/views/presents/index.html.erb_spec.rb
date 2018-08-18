require 'rails_helper'

RSpec.describe "presents/index", type: :view do
  before(:each) do
    assign(:presents, [
      Present.create!(
        :name => "Name",
        :price => 2.5,
        :image => nil,
        :user => nil
      ),
      Present.create!(
        :name => "Name",
        :price => 2.5,
        :image => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of presents" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
