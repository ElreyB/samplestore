Product.destroy_all


10.times do
  products = Product.create!(name: Faker::Commerce.product_name, price: Faker::Commerce.price)
end


p "Create #{Product.count} products."
