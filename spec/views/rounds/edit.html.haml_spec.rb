require 'rails_helper'

RSpec.describe "rounds/edit", type: :view do
  before(:each) do
    @round = assign(:round, Round.create!(
      :name => "MyString",
      :position => 1,
      :tournament => nil
    ))
  end

  it "renders the edit round form" do
    render

    assert_select "form[action=?][method=?]", round_path(@round), "post" do

      assert_select "input#round_name[name=?]", "round[name]"

      assert_select "input#round_position[name=?]", "round[position]"

      assert_select "input#round_tournament_id[name=?]", "round[tournament_id]"
    end
  end
end
