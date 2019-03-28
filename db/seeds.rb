# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count < 1
  User.create(email: 'tourist@guruwalk.com', password: 'password', role: 0, name: 'Tourist', mobile: '1111111111')
  User.create(email: 'guide@guruwalk.com', password: 'password', role: 1, name: 'Admin', mobile: '2222222222')
  User.create(email: 'admin@guruwalk.com', password: 'password', role: 2, name: 'Admin', mobile: '9999999999')
end