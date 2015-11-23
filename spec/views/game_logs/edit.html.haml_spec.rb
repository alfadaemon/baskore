require 'rails_helper'

RSpec.describe "game_logs/edit", type: :view do
  before(:each) do
    @game_log = assign(:game_log, GameLog.create!(
      :game => nil,
      :player => nil,
      :period => 1,
      :event => 1,
      :count => 1
    ))
  end

  it "renders the edit game_log form" do
    render

    assert_select "form[action=?][method=?]", game_log_path(@game_log), "post" do

      assert_select "input#game_log_game_id[name=?]", "game_log[game_id]"

      assert_select "input#game_log_player_id[name=?]", "game_log[player_id]"

      assert_select "input#game_log_period[name=?]", "game_log[period]"

      assert_select "input#game_log_event[name=?]", "game_log[event]"

      assert_select "input#game_log_count[name=?]", "game_log[count]"
    end
  end
end
