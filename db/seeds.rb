# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bsp = Showroom.create(name: 'BSP Sp. z o.o.', address: 'Pabianicka 94/96',
  phone_number: '42 681 16 98', make: 'Opel')
bednarek = Showroom.create(name: 'Skoda Bednarek Dobroń', address: 'Wrocławska 18',
  phone_number: '42 613 07 70', make: 'Skoda')
bilex = Showroom.create(name: 'Bilex', address: 'Milionowa 2k',
  phone_number: '42 640 37 01', make: 'Fiat')

Contract.create(title: 'Fiat 126p - sesja zdjęciowa',
  description: 'Sesja zdjęciowa Fiata 126p na zlecenie salonu Bilex.',
  due_date: 2.days.since, showroom: bilex)

Contract.create(title: 'Skoda Favorit zdjęcia',
  description: 'Potrzebne 20 zdjęć na przyszły tydzień. Szczegóły do ustalenia.',
  due_date: 1.week.since, showroom: bednarek)
