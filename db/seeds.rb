# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Comment.create({content: "This blog is great"},{name:"Stevie Wonder"},{post_id: 26})
c2 = Comment.create({content: "This blog sucks >:("},{name:"Steve"},{post_id: 26})