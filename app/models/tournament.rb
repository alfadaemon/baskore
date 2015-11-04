class Tournament < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :league
  has_many :teams
  has_many :rounds
  has_many :games, through: :teams, source: 'games_as_home'
end
