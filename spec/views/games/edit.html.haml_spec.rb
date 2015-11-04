require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :name => "MyString",
      :home => nil,
      :visit => nil,
      :home_score => 1,
      :visit_score => 1
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_name[name=?]", "game[name]"

      assert_select "input#game_home_id[name=?]", "game[home_id]"

      assert_select "input#game_visit_id[name=?]", "game[visit_id]"

      assert_select "input#game_home_score[name=?]", "game[home_score]"

      assert_select "input#game_visit_score[name=?]", "game[visit_score]"
    end
  end
end
