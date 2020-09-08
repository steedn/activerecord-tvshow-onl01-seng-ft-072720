class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
    show
  end
  def self.most_popular_show
  end
end
