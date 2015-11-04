class Game < ActiveRecord::Base
  belongs_to :home, class_name: 'Team'

  belongs_to :visit, class_name: 'Team'

  before_save :create_name
  before_validation :same_team

  private
    def create_name
      self.name = self.home.name+' vs '+self.visit.name
    end

    def same_team
      !(self.home == self.visit)
    end
end
