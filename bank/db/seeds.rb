# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Account.create(:name => 'account_1', :total =>  10000)
Account.create(:name => 'account_2', :total =>  100320)
Account.create(:name => 'account_3', :total => 10023240)


Transaction