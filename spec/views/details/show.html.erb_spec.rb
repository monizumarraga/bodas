require 'rails_helper'

RSpec.describe "details/show", type: :view do
  before(:each) do
    @detail = assign(:detail, Detail.create!(
      :type => "Type",
      :name => "Name",
      :place => "Place",
      :contact => "Contact",
      :extra => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
