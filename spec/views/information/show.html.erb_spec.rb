require 'rails_helper'

RSpec.describe "information/show", type: :view do
  before(:each) do
    @information = assign(:information, Information.create!(
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
