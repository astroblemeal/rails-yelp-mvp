
# mcdonalds = Restaurant.create(name: 'mcdonalds', address: '1 road road', category: 'french')
# kfc = Restaurant.create(name: 'kfc', address: '1 road road', category: 'belgian')
# mosburger = Restaurant.create(name: 'mosburger', address: '1 road road', category: 'japanese')
# btk = Restaurant.create(name: 'boon tong kee', address: '1 east coast road', category: 'chinese')
# pastafresca = Restaurant.create(name: 'pasta fresca di salvatore', address: '1 upp changi road', category: 'italian')

require 'faker'

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
50.times do
   Restaurant.create!(
      name: Faker::Restaurant.name,
      category: CATEGORIES.sample,
      address: Faker::Address.street_name
    )
end
puts "Finished!"