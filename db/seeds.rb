# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create(name: 'Vígjáték')
c2 = Category.create(name: 'Akció')
c3 = Category.create(name: 'Horror')
c4 = Category.create(name: 'Dráma')
c5 = Category.create(name: 'Thriller')
c6 = Category.create(name: 'Kaland')

m1 = Movie.create(title: 'Gyűrűk ura', description: 'Örök klasszikus kalandozós film', length: 95)
m2 = Movie.create(title: 'Ali G', description: 'Legvicesebb film a világon, a kacaj elmaradhatatlan lesz', length: 124)
m3 = Movie.create(title: 'Harry Potter', description: 'Egy varázslatos világba kalauzol minket e film', length: 160)

MovieCategory.create(movie: m1, category: c4)
MovieCategory.create(movie: m1, category: c6)

MovieCategory.create(movie: m2, category: c5)
MovieCategory.create(movie: m2, category: c4)
MovieCategory.create(movie: m2, category: c3)

MovieCategory.create(movie: m3, category: c1)
MovieCategory.create(movie: m3, category: c3)

a1 = Auditorium.create(name: '1es terem', capacity: 90)
a2 = Auditorium.create(name: '2es terem', capacity: 75)
a3 = Auditorium.create(name: '3es terem', capacity: 62)

s1 = Screening.create(price: 1000, movie: m1, auditorium: a1, date: DateTime.new(2018, 2, 3, 15, 0, 0))
s2 = Screening.create(price: 2000, movie: m1, auditorium: a1, date: DateTime.new(2018, 2, 3, 18, 0, 0))
s3 = Screening.create(price: 1000, movie: m2, auditorium: a2, date: DateTime.new(2018, 2, 3, 15, 0, 0))
s4 = Screening.create(price: 1500, movie: m3, auditorium: a3, date: DateTime.new(2018, 2, 3, 15, 0, 0))

u1 = User.create!(email: 'user@user.com', password: 'user')
r1 = Role.create!(user: u1, role:'USER')
u2 = User.create!(email: 'a@a.com', password: 'a')
r2 = Role.create!(user: u2, role:'USER')
u3 = User.create!(email: 'admin@admin.com', password: 'admin')
r3 = Role.create!(user: u3, role:'ADMIN')

t1 = Ticket.create(user: u1, screening: s1, quantity: 3)
t2 = Ticket.create(user: u1, screening: s2, quantity: 1)
t3 = Ticket.create(user: u1, screening: s3, quantity: 2)
t4 = Ticket.create(user: u1, screening: s4, quantity: 2)
t5 = Ticket.create(user: u2, screening: s1, quantity: 2)
t6 = Ticket.create(user: u2, screening: s1, quantity: 2)