# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
1000000.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  adress = "tokyo-example-#{n+1}"
  password = "password"
  User.create!(name:  name,
               email: email,
               adress: adress,
               password:     password,
               password_confirmation: password)
end
=end

User.create!(name:  "Harada Kantaroh",
             email: "harada.kantaroh@lmi.ne.jp",
             password:              "19951216",
             password_confirmation: "19951216",
             admin: true)

=begin
20.times do |m|
  cost = #{n*10+10}
  Cost.create!(p_cost: cost)
end

Manufacturer.create!(p_manufacture: "MANMAMIYA")
Manufacturer.create!(p_manufacture: "MARUJIRUSHI")
Manufacturer.create!(p_manufacture: "ATARIME")
Manufacturer.create!(p_manufacture: "KOIKYA")
Manufacturer.create!(p_manufacture: "NATURE")
Manufacturer.create!(p_manufacture: "OHTOYA")
Manufacturer.create!(p_manufacture: "VABY")
Manufacturer.create!(p_manufacture: "SOROJIRUSHI")
Manufacturer.create!(p_manufacture: "LOOP")
Manufacturer.create!(p_manufacture: "INTERJANK")


Genre.create!(p_genre: "candy")
Genre.create!(p_genre: "cookie")
Genre.create!(p_genre: "chocolate")
Genre.create!(p_genre: "gum")
Genre.create!(p_genre: "gumi")

100.times do |n|
  stock = #{n*100} 
  Stock.create!(p_stock: stock)
end

for x in 1..20
 100.times do |l|
  name = Faker::Dessert.variety
  detail = Faker::Food.description
  Product.create!(p_name: name,
                  p_photo: "pics.png",
                  p_detail: detail,
                  stock_id: rand(1..100),
                  genre_id: rand(1..5),
                  manufacturer_id: rand(1..20),
                  cost_id: rand(1..20))
 end
end

=end

