# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c = Company.create(
  name: 'sadasd',
  address: 'asdasd',
  phone: '12312312'
)

c.employees.create(
  first_name: 'asdasd',
  last_name: 'sdad',
  phone: '12312',
  address: 'asdasd'
)
