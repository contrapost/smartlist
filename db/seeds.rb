# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new :email => 'lister@lister.com', :password => '123456789', :password_confirmation => '123456789'
user.skip_confirmation!
user.save!
user2 = User.new :email => 'lister2@lister.com', :password => '123456789', :password_confirmation => '123456789'
user2.skip_confirmation!
user2.save!
user3 = User.new :email => 'lister3@lister.com', :password => '123456789', :password_confirmation => '123456789'
user3.skip_confirmation!
user3.save!
admin = User.new :email => 'admin@admin.com', :password => '123456789', :password_confirmation => '123456789', :admin => true
admin.skip_confirmation!
admin.save!
store = User.new :email => 'store@store.com', :password => '123456789', :password_confirmation => '123456789', :store => true
store.skip_confirmation!
store.save!
store2 = User.new :email => 'store2@store.com', :password => '123456789', :password_confirmation => '123456789', :store => true
store2.skip_confirmation!
store2.save!


FavouriteStore.create!(name: 'Kiwi', address: '1, Address str', user_id: 1)
FavouriteStore.create!(name: 'Menu', address: '2, Address str', user_id: 1)
FavouriteStore.create!(name: 'Coop', address: '3, Address str', user_id: 1)
FavouriteStore.create!(name: 'Kiwi', address: '3, Address str', user_id: 1)
FavouriteStore.create!(name: 'Kiwi', address: '1, Address str', user_id: 2)
FavouriteStore.create!(name: 'Menu', address: '2, Address str', user_id: 2)
FavouriteStore.create!(name: 'Coop', address: '3, Address str', user_id: 2)
FavouriteStore.create!(name: 'Kiwi', address: '3, Address str', user_id: 2)
FavouriteStore.create!(name: 'Kiwi', address: '1, Address str', user_id: 2)
FavouriteStore.create!(name: 'Menu', address: '2, Address str', user_id: 3)
FavouriteStore.create!(name: 'Coop', address: '3, Address str', user_id: 3)
FavouriteStore.create!(name: 'Kiwi', address: '3, Address str', user_id: 3)


Sale.create!(user_id: 5, name:'30% rabatt på alt!', expiry_date: DateTime.now + 10.days, image_url: 'no_image_yet' )
Sale.create!(user_id: 5, name:'50% rabatt på keefer!!!', expiry_date: DateTime.now + 10.days, image_url: 'no_image_yet' )
Sale.create!(user_id: 5, name:'100% rabatt på Farris!', expiry_date: DateTime.now + 10.days, image_url: 'no_image_yet' )
Sale.create!(user_id: 6, name:'250% rabatt på epler!', expiry_date: DateTime.now + 10.days, image_url: 'no_image_yet' )
Sale.create!(user_id: 6, name:'12345% rabatt på alt!', expiry_date: DateTime.now + 10.days, image_url: 'no_image_yet' )
Sale.create!(user_id: 5, name:'Ingen rabatt på alt!', expiry_date: DateTime.now + 10.days, image_url: 'no_image_yet' )


Product.create!(user_id: 1, name: 'Milk', description: 'Milk is very healthy', price: 11.43, store: 'Rema 100000')
Product.create!(user_id: 1, name: 'Apples', description: 'Apples are very healthy', price: 12.43, store: 'Kiwi')
Product.create!(user_id: 1, name: 'Onion', description: 'Onion is very healthy', price: 13.43, store: 'Coop')
Product.create!(user_id: 2, name: 'Sausage', description: 'Sausages are very healthy', price: 14.43, store: 'Coop')
Product.create!(user_id: 3, name: 'Milk', description: 'Milk is very healthy', price: 15.43, store: 'Menu')
Product.create!(user_id: 3, name: 'Ham', description: 'Ham is very healthy', price: 16.43, store: 'Ica', active: true)