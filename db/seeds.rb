# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Airport.create!(code:"SFO")
# Airport.create!(code:"NYC")

# Flight.create!(departure_id:1,arrival_id:2,start_time:Time.zone.now,duration:"3 hours")
# Flight.create!(departure_id:2,arrival_id:1,start_time:Time.zone.now+(3600*5),duration:" 3 hours")
# Airport.create!(code: "TYC")
# Flight.create!(departure_id:3,arrival_id:1,start_time:Time.zone.now+(3600*7),duration:" 4:30 hours")

Flight.create!(departure_id:1,arrival_id:3,start_time:Time.zone.now+(3600*14),duration:" 4:30 hours")
Flight.create!(departure_id:2,arrival_id:3,start_time:Time.zone.now+(3600*12),duration:" 5 hours")