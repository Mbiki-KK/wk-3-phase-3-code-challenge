require_relative 'config/environment'

user = User.create(name: 'John')
product = Product.create(name: 'Drone')

review = product.reviews.create(
  star_rating: 5,
  comment: 'Great product',
  user: user
)

user = User.create(name:'Stephanie')
product = Product.create(name: 'Make-up equipment')

review = product.reviews.create(
  star_rating: 4,
  comment: 'Nice product',
  user: user
)
