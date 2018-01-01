# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times { Post.create!(book_name: 'インフラエンジニアの教科書', title: 'TCP/IPとトランスポートプロトコル', story_1: 'いい', story_2: 'トランスポートプロトコルは', story_3: '眠い', story_4: 'ずれてる方が良い') }
2.times { Post.create!(book_name: 'Webを支える技術', title: 'RESTfullな話', story_1: 'ああ', story_2: 'いい', story_3: 'ううええ', story_4: 'おお') }