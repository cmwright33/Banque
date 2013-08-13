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


Transaction.create(:typeof => 'Deposit', :memo => "Birthday", :accounts_id => 1)
Transaction.create(:typeof => 'Withdraw', :memo => "Fun!", :accounts_id => 2)
Transaction.create(:typeof => 'Withdraw', :memo => "Lunch", :accounts_id => 1)
Transaction.create(:typeof => 'Deposit', :memo => "Bank Robbery", :accounts_id => 3)