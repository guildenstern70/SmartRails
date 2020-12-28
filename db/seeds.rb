# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Users
User.create([
              {
                username: 'alessio',
                name: 'Alessio',
                surname: 'Saltarin',
                password: 'doctor'
              },
              {
                username: 'guest',
                name: 'John',
                surname: 'Doe',
                password: 'guest'
              }
            ])

# Items
Item.create([
              {
                name: 'Item #1',
                price: 22,
                stars: 3
              },
              {
                name: 'Item #2',
                price: 14,
                stars: 4
              },
              {
                name: 'Item #3',
                price: 17,
                stars: 2
              },
              {
                name: 'Item #4',
                price: 120,
                stars: 5
              },
              {
                name: 'Item #5',
                price: 25,
                stars: 2
              },
              {
                name: 'Item #6',
                price: 19,
                stars: 3
              }
            ])

