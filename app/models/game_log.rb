class GameLog < ActiveRecord::Base
  belongs_to :game
  belongs_to :player

  POINTS = 0
  FOULS = 1
  CHANGE = 2
  GAME_EVENT = {POINTS=>'Points', FOULS=>'Fouls', CHANGE=>'Change'}

  def name
    GAME_EVENT[self.event]
  end

end
