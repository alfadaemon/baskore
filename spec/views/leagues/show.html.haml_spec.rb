require 'rails_helper'

RSpec.describe "leagues/show", type: :view do
  before(:each) do
    @league = assign(:league, League.create!(
      :name => "Name",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/City/)
  end
end
