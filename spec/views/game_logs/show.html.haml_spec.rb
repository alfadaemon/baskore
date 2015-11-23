require 'rails_helper'

RSpec.describe "game_logs/show", type: :view do
  before(:each) do
    @game_log = assign(:game_log, GameLog.create!(
      :game => nil,
      :player => nil,
      :period => 1,
      :event => 2,
      :count => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
