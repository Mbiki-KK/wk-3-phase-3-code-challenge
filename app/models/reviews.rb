class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def print_review
    # Print the review details
    puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
  end

  def users
    User.find(user_id)
  end

  def product
    # Return the Product instance for this Review
    Product.find_by(id: product_id)
  end
end
