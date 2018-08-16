require 'rails_helper'

RSpec.describe "information/index", type: :view do
  before(:each) do
    assign(:information, [
      Information.create!(
        :info => "MyText"
      ),
      Information.create!(
        :info => "MyText"
      )
    ])
  end

  it "renders a list of information" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
