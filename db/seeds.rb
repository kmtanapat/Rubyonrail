# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def up
  # User.create(user_name: 'tanapat' ,email: 'test@test.local', password_digest: '1234', roles: 'admin')
  Product.create([{name: 'p'},{details: 'deaa'},{volumn: 5},{quantity:10},{cost:300},{price:400},{sell_date:'2018-12-25'}])
end
def down
end