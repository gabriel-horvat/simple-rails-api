# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

joe = User.create( username: 'joe', password: 'password' )
fact_one = Fact.create( fact: 'Why is a raven like a writing desk?', likes: 1, user_id: 1 )
fact_two = Fact.create( fact: 'Bla bli blup', likes: 2, user_id: 1 )
