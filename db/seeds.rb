# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = 'qwerty444'

# create users
angel = User.create!(username: 'Ангелина Терехова',
                        email: 'angel@tatoojmb.info',
                     password: password,
        password_confirmation: password,
           profile_attributes: { price: 500,
                                active: true,
                               pic_num: 1,
                                 color: 'black',
                            tatoo_size: 5,
                             work_type: 'rotary'})

ivans = User.create!(username: 'Иван Сидоров',
                        email: 'ivans@tatoojmb.info',
                     password: password,
        password_confirmation: password,
           profile_attributes: { price: 2500,
                                active: true,
                               pic_num: 3,
                            tatoo_size: 10,
                             work_type: 'induction'})

aleks = User.create!(username: 'Алексей Стриженов',
                        email: 'aleks@tatoojmb.info',
                     password: password,
        password_confirmation: password,
           profile_attributes: { price: 8000,
                                active: true,
                               pic_num: 4,
                            tatoo_size: 50,
                             work_type: 'rotary'})

elena = User.create!(username: 'Елена Сергиевич',
                        email: 'elena@tatoojmb.info',
                     password: password,
        password_confirmation: password,
           profile_attributes: { price: 500,
                                active: true,
                               pic_num: 2,
                                 color: 'black',
                            tatoo_size: 5,
                             work_type: 'handwork'})

# update profiles
# angel.profile.update!(price: 500,  active: true, pic_num: 1, color: 'black', tatoo_size: 5,  work_type: 'rotary')
# ivans.profile.update!(price: 2500, active: true, pic_num: 3,                 tatoo_size: 10, work_type: 'induction')
# aleks.profile.update!(price: 8000, active: true, pic_num: 4,                 tatoo_size: 50, work_type: 'rotary')
# elena.profile.update!(price: 500,  active: true, pic_num: 2, color: 'black', tatoo_size: 5,  work_type: 'handwork')
