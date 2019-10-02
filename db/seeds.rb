# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = 'qwerty444'

# create users
angel = User.create!(username: 'Ангелина Терехова', email: 'angel@tatoojmb.info', password: password, password_confirmation: password)
ivans = User.create!(username: 'Иван Сидоров',      email: 'ivans@tatoojmb.info', password: password, password_confirmation: password)
aleks = User.create!(username: 'Алексей Стриженов', email: 'aleks@tatoojmb.info', password: password, password_confirmation: password)
elena = User.create!(username: 'Елена Сергиевич',   email: 'elena@tatoojmb.info', password: password, password_confirmation: password)

# update profiles
angel.profile.update!(price: 500, color: 'black', tatoo_size: 5,  work_type: 'rotary')
ivans.profile.update!(price: 2500,                tatoo_size: 10, work_type: 'induction')
aleks.profile.update!(price: 8000,                tatoo_size: 50, work_type: 'rotary')
elena.profile.update!(price: 500, color: 'black', tatoo_size: 5,  work_type: 'handwork')
