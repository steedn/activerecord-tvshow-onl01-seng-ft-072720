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
  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end
  def self.ratings_sum
    Show.all.sum(:rating)
  end
end
