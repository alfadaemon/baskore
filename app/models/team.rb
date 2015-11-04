class Team < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :tournament
  has_many :games_as_home, class_name: 'Game', foreign_key: 'home_id'
  has_many :games_as_visit, class_name: 'Game', foreign_key: 'visit_id'
end
