require 'rails_helper'

RSpec.describe "game_logs/index", type: :view do
  before(:each) do
    assign(:game_logs, [
      GameLog.create!(
        :game => nil,
        :player => nil,
        :period => 1,
        :event => 2,
        :count => 3
      ),
      GameLog.create!(
        :game => nil,
        :player => nil,
        :period => 1,
        :event => 2,
        :count => 3
      )
    ])
  end

  it "renders a list of game_logs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
