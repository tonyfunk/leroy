Product.destroy_all

5.times do |i|
  Product.create(
    name: "Product #{i + 1}",
    description: "This is the description for Product #{i + 1}.",
    price: 100 * (i + 1),
    availability: [true, false].sample,
  )
  p "Product #{i + 1} created."
end
