require 'rails_helper'

RSpec.describe "leagues/edit", type: :view do
  before(:each) do
    @league = assign(:league, League.create!(
      :name => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit league form" do
    render

    assert_select "form[action=?][method=?]", league_path(@league), "post" do

      assert_select "input#league_name[name=?]", "league[name]"

      assert_select "input#league_city[name=?]", "league[city]"
    end
  end
end
