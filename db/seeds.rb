require_relative '../config/environment' # Make sure to adjust the relative path if needed

# Seed data for Products
Product.create(name: 'Product 1')
Product.create(name: 'Product 2')
Product.create(name: 'Product 3')

# Seed data for Users
User.create(name: 'User 1')
User.create(name: 'User 2')
User.create(name: 'User 3')

# Seed data for Reviews
Review.create(user_id: 1, product_id: 1, star_rating: 4, comment: 'Great product!')
Review.create(user_id: 2, product_id: 1, star_rating: 3, comment: 'Average product')
Review.create(user_id: 3, product_id: 2, star_rating: 5, comment: 'Excellent product!')
Review.create(user_id: 1, product_id: 3, star_rating: 2, comment: 'Not satisfied')

puts 'Seeding completed!'
