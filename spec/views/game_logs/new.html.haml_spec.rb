require 'rails_helper'

RSpec.describe "game_logs/new", type: :view do
  before(:each) do
    assign(:game_log, GameLog.new(
      :game => nil,
      :player => nil,
      :period => 1,
      :event => 1,
      :count => 1
    ))
  end

  it "renders new game_log form" do
    render

    assert_select "form[action=?][method=?]", game_logs_path, "post" do

      assert_select "input#game_log_game_id[name=?]", "game_log[game_id]"

      assert_select "input#game_log_player_id[name=?]", "game_log[player_id]"

      assert_select "input#game_log_period[name=?]", "game_log[period]"

      assert_select "input#game_log_event[name=?]", "game_log[event]"

      assert_select "input#game_log_count[name=?]", "game_log[count]"
    end
  end
end
