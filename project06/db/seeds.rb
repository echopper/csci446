# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username:              'gaiminator',
            password:              'password',
            password_confirmation: 'password',
            email:                 'a@email.com',
            first_name:            'Howie',
            last_name:             'Gaimur'
           )

User.create(username:              'admin',
            password:              'password',
            password_confirmation: 'password',
            email:                 'creator@gamez.com',
            first_name:            'Philip',
            last_name:             'Greenspun'
           )
