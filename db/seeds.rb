# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = 'qwerty444'

elena = User.create!(username: 'Елена Сергиевич',   email: 'elena@tatoojmb.info', password: password, password_confirmation: password)
angel = User.create!(username: 'Ангелина Терехова', email: 'angel@tatoojmb.info', password: password, password_confirmation: password)
ivans = User.create!(username: 'Иван Сидоров',      email: 'ivans@tatoojmb.info', password: password, password_confirmation: password)
aleks = User.create!(username: 'Алексей Стриженов', email: 'aleks@tatoojmb.info', password: password, password_confirmation: password)