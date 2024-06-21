# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Post.delete_all
User.delete_all
Tag.delete_all

ex = User.create name: 'Example', email: 'example@example.com', password: 'password'
jm = User.create name: 'John McEnrow', email: 'jmcenrow@example.com', password: 'password'
pg = User.create name: 'Peter Gabriel', email: 'pgabriel@example.com', password: 'password'

t1 = Tag.create name: 'compsci'
t2 = Tag.create name: 'study'
t3 = Tag.create name: 'python'
t4 = Tag.create name: 'ruby'

p1 = Post.create title: 'Python es el mejor lenguaje', content: 'Bla bla bla', published_at: Time.now, user: ex, answers_count: 0
p2 = Post.create title: 'Ruby es el mejor lenguaje', content: 'Bla bla bla', published_at: Time.now, user: pg, answers_count: 0

PostsTag.create post: p1, tag: t1
PostsTag.create post: p1, tag: t3
PostsTag.create post: p2, tag: t4
PostsTag.create post: p2, tag: t2