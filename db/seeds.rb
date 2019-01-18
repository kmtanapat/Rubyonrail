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
  line_items = LineItem.create([
                                   { description: 'Tuts+ Subscription April 2016', price: 15.0 },
                                   { description: 'Ruby eBook', price: 9.90} ])
  Invoice.create(
      company: 'Pedro',
      amount: 24.90,
      line_items: line_items,
      contragent: 'true',
      currency: 'baht',
      date: Date.new(2016, 4, 1))
end
def down
end