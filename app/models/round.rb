class Round < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :tournament
  has_many :games
end
