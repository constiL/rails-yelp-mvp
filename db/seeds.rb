# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database...."
Restaurant.destroy_all

puts "Creating restaurants..."
pum_pui = { name: "Pum Pui", address: "Obere Weißgerberstraße 16, 1030 Wien", phone_number: "01 8901960", category: "chinese" }
francesco = { name: "Francesco", address: "Grinzinger Str. 50, 1190 Wien", phone_number: "01 3682311", category: "italian" }
teka_sushi = { name: "Teka Sushi", address: "Billrothstraße 5, 1190 Wien", phone_number: "01 9610630", category: "japanese" }
cafe_francais = { name: "Cafe Francais", address: "Währinger Str. 6-8, 1090 Wien", phone_number: "01 3190903", category: "french" }
beer_paradise = { name: "Beer Paradise", address: "Judenpl. 1, 1010 Wien", phone_number: "01 5356611", category: "belgian" }

[pum_pui, francesco, teka_sushi, cafe_francais, beer_paradise].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
