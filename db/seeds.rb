# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p "SEED START"

pepe = User.create(:email => "pepe@mail.com", :password => "123123", :password_confirmation => "123123")
ana = User.create(:email => "ana@mail.com", :password => "123123", :password_confirmation => "123123")
banks = [ "BCP", "BBVA", "Asteca", "Continental", "Banbif" ]
providerOne = Provider.create(name: "Crea", NIT: "901362343-4", contact_name: "Pepe", phone: "987987987")
providerTwo = Provider.create(name: "Avanza", NIT: "901364564-9", contact_name: "Alisson", phone: "987987123")
providerThree = Provider.create(name: "International Edu", NIT: "904564343-1", contact_name: "Paco", phone: "987987234")

banks.each do |bank|
  Account.create(name: bank)
end


p "SEED FINISHED"
