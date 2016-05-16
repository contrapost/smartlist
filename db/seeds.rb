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
admin = User.new :email => 'admin@admin.com', :password => '123456789', :password_confirmation => '123456789', :admin => true
admin.skip_confirmation!
admin.save!
store = User.new :email => 'store@store.com', :password => '123456789', :password_confirmation => '123456789', :store => true
store.skip_confirmation!
store.save!