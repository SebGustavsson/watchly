# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Watch.destroy_all
User.destroy_all
john = User.new(email: "john@watchly.se", password: "password")
john.save

puts "created user"

file1 = URI.open('https://images.unsplash.com/photo-1600003014755-ba31aa59c4b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80')
rolex_datejust = Watch.new(address: "Drottningholm Stockholm", brand: 'Rolex', model: "Datejust", year: 2013, user_id: john.id)
rolex_datejust.photos.attach(io: file1, filename: 'datejust.png', content_type: 'image/png')
rolex_datejust.save
puts "created watch 1"

file2 = URI.open('https://images.unsplash.com/photo-1594534475808-b18fc33b045e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80')
rolex_submariner = Watch.new(address: "Ringvägen 20 Stockholm", brand: 'Rolex', model: "Submariner", year: 2015, user_id: john.id)
rolex_submariner.photos.attach(io: file2, filename: 'submariner.png', content_type: 'image/png')
rolex_submariner.save
puts "created watch 2"

file3 = URI.open('https://images.unsplash.com/photo-1627860284764-c92502f39afb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2835&q=80')
tudor_black_bay = Watch.new(address: "Götgatan 50 Stockholm", brand: 'Tudor', model: "Black Bay", year: 2015, user_id: john.id)
tudor_black_bay.photos.attach(io: file3, filename: 'blackbay.png', content_type: 'image/png')
tudor_black_bay.save

file4 = URI.open('https://images.unsplash.com/photo-1626624386327-5204714bae9f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80')
patek_philippe_nautilus = Watch.new(address: "Vallagränd 10 Stockholm", brand: 'Patek Philippe', model: "Nautilus", year: 2017, user_id: john.id)
patek_philippe_nautilus.photos.attach(io: file4, filename: 'nautilus.png', content_type: 'image/png')
patek_philippe_nautilus.save

file5 = URI.open('https://images.unsplash.com/photo-1548171916-c0dea7f94ca6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=860&q=80')
breitling_navitimer = Watch.new(address: "Rämensvägen 15 Stockholm", brand: 'Breitling', model: "Navitimer", year: 2014, user_id: john.id)
breitling_navitimer.photos.attach(io: file5, filename: 'navitimer.png', content_type: 'image/png')
breitling_navitimer.save

file6 = URI.open('https://images.unsplash.com/photo-1612817159623-0399784fd0ce?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1450&q=80')
seiko_sarb033 = Watch.new(address: "Drottninggatan 19 Stockholm", brand: 'Seiko', model: "SARB-033", year: 2021, user_id: john.id)
seiko_sarb033.photos.attach(io: file6, filename: 'sarb033.png', content_type: 'image/png')
seiko_sarb033.save

file7 = URI.open('https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2788&q=80')
iwc_portugieser = Watch.new(address: "Kungsgatan 22 Stockholm", brand: 'IWC', model: "Portugieser", year: 2009, user_id: john.id)
iwc_portugieser.photos.attach(io: file7, filename: 'portugieser.png', content_type: 'image/png')
iwc_portugieser.save

file8 = URI.open('https://images.unsplash.com/photo-1444881421460-d838c3b98f95?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80')
breitling_superocean = Watch.new(address: "Nygatan Karlstad", brand: 'Breitling', model: "Superocean", year: 2012, user_id: john.id)
breitling_superocean.photos.attach(io: file8, filename: 'superocean.png', content_type: 'image/png')
breitling_superocean.save

file9 = URI.open('https://images.unsplash.com/photo-1587914839172-657ff0b85b16?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1160&q=80')
oris_big_crown = Watch.new(address: "Götgatan 22 Stockholm", brand: 'Oris', model: "Big Crown", year: 2021, user_id: john.id)
oris_big_crown.photos.attach(io: file9, filename: 'bigcrown.png', content_type: 'image/png')
oris_big_crown.save
