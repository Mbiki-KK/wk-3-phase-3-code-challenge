class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews

  def favorite_product
    # Find the product with the highest star rating from this user's reviews
    products.order('reviews.star_rating DESC').first
  end

  def remove_reviews(product)
    # Remove all of this user's reviews for the given product
    reviews.where(product_id: product.id).destroy_all
  end

  def products
    # Return a collection of all the Products that the User has reviewed
    Product.joins(:reviews).where(reviews: { user_id: id })
  end
end
