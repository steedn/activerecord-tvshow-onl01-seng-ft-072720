class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
    show
  end
  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
  end
  def self.lowest_rating
    show = Show.minimum(:rating)
    show
  end
end
