# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

users = [
  {
    name: 'まさ',
    email: 'masa@example.com',
    password: 'password',
  },
  {
    name: '南部さん',
    email: 'nambu@example.com',
    password: 'password',
  },
  {
    name: 'むらい',
    email: 'muraikenta0507@example.com',
    password: 'password',
  },
  {
    name: 'みっちー',
    email: 'michi@example.com',
    password: 'password',
  },
  {
    name: 'しょー',
    email: 'sho@example.com',
    password: 'password',
  },
]

reviews = [
  {
    user_id: 1,
    movie_id: 1,
    point: 4,
    content: 'おもしろかった',
  },
  {
    user_id: 1,
    movie_id: 2,
    point: 4,
  },
  {
    user_id: 1,
    movie_id: 4,
    point: 5,
    content: '最高の気分',
  },
  {
    user_id: 2,
    movie_id: 3,
    point: 2,
  },
  {
    user_id: 2,
    movie_id: 4,
    point: 4,
    content: 'なかなかよかった',
  },
  {
    user_id: 3,
    movie_id: 1,
    point: 3,
  },
  {
    user_id: 4,
    movie_id: 1,
    point: 3,
    content: 'まあまあ。悪くはないね',
  },
  {
    user_id: 4,
    movie_id: 2,
    point: 1,
  },
  {
    user_id: 4,
    movie_id: 3,
    point: 5,
    content: 'もう100回くらい見たい！',
  },
  {
    user_id: 5,
    movie_id: 1,
    point: 5,
  },
  {
    user_id: 5,
    movie_id: 4,
    point: 2,
    content: '眠たくなってしまった',
  },
  {
    user_id: 6,
    movie_id: 2,
    point: 4,
  },
  {
    user_id: 6,
    movie_id: 3,
    point: 4,
    content: 'なかなかいい映画！',
  },
  {
    user_id: 7,
    movie_id: 3,
    point: 3,
  },
]

User.create(users)

Review.create(reviews)
