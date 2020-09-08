class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
    show
  end
end
