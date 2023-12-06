# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Service.destroy_all
Test.destroy_all
Package.destroy_all
Dermoesthetic.destroy_all

puts "Creating user..."
mario = User.create!(email: "info@piperocare.com", password: "PiperoGirl2024", admin: true)
puts "Created user.."
puts "*******************"
puts "Creating services..."

sherbime1 = { name: "PASTRIM I THELLË I FYTYRËS", price: 4500, currency: "ALL", user: mario }
sherbime2 = { name: "MASKË ME VITAMIN C", price: 2000, currency: "ALL", user: mario }
sherbime3 = { name: "PEELING SHPINE", price: 7000, currency: "ALL", user: mario }
sherbime4 = { name: "PEELING FYTYRE", price: 5000, currency: "ALL", user: mario }
sherbime5 = { name: "PASTRIM I PIKAVE TË ZEZA NË SHPINË", price: 5000, currency: "ALL", user: mario }
sherbime6 = { name: "DERMAPEN I THJESHTË", price: 100, currency: "EUR", user: mario }
sherbime7 = { name: "DERMAPEN ME VIT C", price: 120, currency: "EUR", user: mario }
sherbime8 = { name: "DERMAPEN ME AMPULA", price: 120, currency: "EUR", user: mario }
sherbime9 = { name: "DERMAPEN ME PEELING", price: 140, currency: "EUR", user: mario }
sherbime10 = { name: "DERMAPEN ME PRP", price: 150, currency: "EUR", user: mario }
sherbime11 = { name: "MASAZH ANTICELULIT (KOFSHË, VITHE)", price: 3000, currency: "ALL", user: mario }
sherbime12 = { name: "MASAZH ANTICELULIT (KOFSHË, VITHE, BARK)", price: 3500, currency: "ALL", user: mario }
sherbime13 = { name: "MASAZH RELAX", price: 5000, currency: "ALL", user: mario }
sherbime14 = { name: "MASAZH RELAX (ZONA E SHPINËS)", price: 3000, currency: "ALL", user: mario }
sherbime15 = { name: "SCRUB TRUPI", price: 3500, currency: "ALL", user: mario }
sherbime16 = { name: "PEDIKYR KURATIV", price: 3500, currency: "ALL", user: mario }
sherbime17 = { name: "PEDIKYR ESTETIK", price: 2000, currency: "ALL", user: mario }
sherbime18 = { name: "THONJTË E DUARËVE ME MANIKYR XHEL", price: 1300, currency: "ALL", user: mario }
sherbime19 = { name: "THONJTË E DUARËVE ME XHEL", price: 1500, currency: "ALL", user: mario }
sherbime20 = { name: "THONJ ME TIPSA", price: 2000, currency: "ALL", user: mario }
sherbime21 = { name: "THONJ ME ZGJATIM ME LETËR", price: 2000, currency: "ALL", user: mario }
sherbime22 = { name: "THONJTË E KEMBËVE ME MANIKYR XHEL", price: 1500, currency: "ALL", user: mario }
sherbime23 = { name: "THUA NË MISH", price: 1000, currency: "ALL", user: mario }

[sherbime1, sherbime2, sherbime3,
  sherbime4,
  sherbime5,
  sherbime6,
  sherbime7,
  sherbime8,
  sherbime9,
  sherbime10,
  sherbime11,
  sherbime12,
  sherbime13,
  sherbime14,
  sherbime15,
  sherbime16,
  sherbime17,
  sherbime18,
  sherbime19,
  sherbime20,
  sherbime21,
  sherbime22,
  sherbime23].each do |attributes|
  service = Service.create!(attributes)
  puts "Created service: '#{service.name}'"
end
puts "*******************"
puts "Creating packages"

paketa1 = { name: "XL", desctription: "Këmbët(total), Bikini(total), Shpina(total), Gjoks_&_Barku", price_session: 90, price_three_sessions: 180, price_five_sessions: 240, price_ten_sessions: 420, user: mario }
paketa2 = { name: "L", desctription: "Këmbët(gjysëm), Krahët(gjysëm), Bikini, Bark, Gjoks, Shpina(gjysëm)", price_session: 70, price_three_sessions: 140, price_five_sessions: 180, price_ten_sessions: 300, user: mario }
paketa3 = { name: "M", desctription: "Sqetulla, Fund_shpine, Qafa, Fytyrë, Pjesa_braziliane", price_session: 45, price_three_sessions: 85, price_five_sessions: 110, price_ten_sessions: 180, user: mario }
paketa4 = { name: "S", desctription: "Vija_abdominale, Gjuha, Barsetat, Buzët, Duart, Këmbët(gishtat)", price_session: 20, price_three_sessions: 45, price_five_sessions: 60, price_ten_sessions: 70, user: mario }
paketa5 = { name: "Full Body", desctription: "Vajza", price_session: 240, price_three_sessions: 480, price_five_sessions: 720, user: mario }
paketa6 = { name: "Full Body", desctription: "Djem", price_session: 345, price_three_sessions: 690, price_five_sessions: 920, user: mario }

[paketa1, paketa2, paketa3, paketa4, paketa5, paketa6].each do |attributes|
  package = Package.create!(attributes)
  puts "Created package: '#{package.name}'"
end

puts "*******************"
puts "Creating analyses"

analize1 = { name: "Analiza biokimike", user: mario }
analize2 = { name: "Analiza hormonale", user: mario }
analize3 = { name: "Analiza mikrobiologjike", user: mario }
analize4 = { name: "Paketa COVID-19", user: mario }
analize5 = { name: "Etj", user: mario }
[analize1, analize2, analize3, analize4, analize5].each do |attributes|
  test = Test.create!(attributes)
  puts "Created test: '#{test.name}'"
end

puts "*******************"
puts "Creating dermoesthetics"

dermoesthetic1 = { name: "Pastrim Fytyre", user: mario }
dermoesthetic2 = { name: "Masazh Anticelulit", user: mario }
dermoesthetic3 = { name: "Dermapen", user: mario }
dermoesthetic4 = { name: "Botox", user: mario }
dermoesthetic5 = { name: "Filler", user: mario }
[dermoesthetic1, dermoesthetic2, dermoesthetic3, dermoesthetic4, dermoesthetic5].each do |attributes|
  dermoesthetic = Dermoesthetic.create!(attributes)
  puts "Created test: '#{dermoesthetic.name}'"
end

puts "Finished!"
