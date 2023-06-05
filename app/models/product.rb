
class Product < ActiveRecord
  has_many :reviews
  has_many :users, through: :reviews

  def leave_review(user, star_rating, comment)
    # Creates a new review associated with this product and user
    reviews.create(user: user, star_rating: star_rating, comment: comment)
  end

  def print_all_reviews
    # Print all reviews for this product
    reviews.each do |review|
      review.print_review
    end
  end

  def average_rating
    total_ratings = reviews.sum
    # Calculate the average star rating for all reviews of this product
    reviews.average(:star_rating).to_f
  end
end
