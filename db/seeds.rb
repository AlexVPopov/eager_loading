# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create(name: 'John', active: true)
merry = User.create(name: 'Merry', active: true)
deactivated = User.create(name: 'Deactivated', active: false)

johns_post = john.posts.create(title: "John's post")
merrys_post = merry.posts.create(title: "Merry's post")
deactivated_post = deactivated.posts.create(title: "Deactivated's post")

johns_post.comments.create(user: john)
johns_post.comments.create(user: merry)
johns_post.comments.create(user: deactivated)

merrys_post.comments.create(user: john)
merrys_post.comments.create(user: merry)
merrys_post.comments.create(user: deactivated)

deactivated_post.comments.create(user: john)
deactivated_post.comments.create(user: merry)
deactivated_post.comments.create(user: deactivated)
