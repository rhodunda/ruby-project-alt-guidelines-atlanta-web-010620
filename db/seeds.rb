puts "creating products"

10.times do
Product.create(name: Faker::FunnyName.name, price: Faker::Number.between(1, 60))

end 

puts "creating users"

10.times do 
User.create(name: Faker::FunnyName.name, password: Faker::Verb.base, money_spent: Faker::Number.between(1, 400))

end 

puts "creating purchases"

10.times do 
Purchase.create(user_id: User.all.sample.id, product_id: Product.all.sample.id, amount: Faker::Number.between(10, 100))

end 