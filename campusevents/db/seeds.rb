# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Attendee.create!(first_name: 'Homer', last_name: 'Simpson', email: 'ewhatnow?')
a2 = Attendee.create!(first_name: 'Waylon', last_name: 'Smithers', email: 'waylon.smithers@malibu-stacy-news.com')
a3 = Attendee.create!(first_name: 'Lenny', last_name: 'Leonard', email: 'lenny@carlfans.com')
a4 = Attendee.create!(first_name: 'Carl', last_name: 'Carlson', email: 'carl@spnupopl.org')

s1 = Sponsor.create!(name: "Springfield Isotopes", url: "http://www.springfieldisotopes.com/", logo: "An Atom Guy")
s2 = Sponsor.create!(name: "Springfield Nuclear Power Plant", url: "http://www.spnupopl.org/", logo: "An Atom")

l1 = Location.create!(name: "Meet-Town", description: "The land of events and meetings.", latitude: "60.161823", longitude: "24.905008", map_url: "map.com/meet-town")
l2 = Location.create!(name: "Location Two", description: "Alternate location in the event MeetLand breaks.", latitude: "72.3", longitude: "19.192", map_url: "the-map.coms")

e1 = Event.create!(name: "Nuclear Power and You", start_date: Date.parse("March 3, 2017"), end_date: Date.parse("March 10, 2017"), url: "http://www.hats-on.com/")
e1m1 = Meeting.create!(name: "Meet People", description: "Come meet people.", start_time: Time.now.middle_of_day(), end_time: Time.now.end_of_day(), :location => l1)
e1m2 = Meeting.create!(name: "People Meet", description: "People meet here.", start_time: Time.now.middle_of_day(), end_time: Time.now.end_of_day(), :location => l1)

e1.sponsors << s2
e1.meetings << e1m1
e1.meetings << e1m2

e2 = Event.create!(name: "Safety Seminar", start_date: DateTime.new(2017, 03, 06), end_date: DateTime.new(2017, 03, 07), url: "http://www.safe-power.com/")
e2m1 = Meeting.create!(name: "Greet The Folks", description: "Say a greeting to the folks.", start_time: Time.now.middle_of_day(), end_time: Time.now.end_of_day(), :location => l1) 
e2m2 = Meeting.create!(name: "Talk The Folks", description: "Talk to the folks.", start_time: Time.now.middle_of_day(), end_time: Time.now.end_of_day(), :location => l1) 

e2.sponsors << s1
e2.meetings << e2m1
e2.meetings << e2m2

e3 = Event.create!(name: "Isotopes Rule!", start_date: DateTime.new(2017, 03, 02), end_date: DateTime.new(2017, 03, 05), url: "http://www.springfieldisotopes.com/rule")
e3m1 = Meeting.create!(name: "An Event", description: "Event it up guys!", start_time: Time.now.noon(), end_time: Time.now.end_of_day(), :location => l1) 
e3m2 = Meeting.create!(name: "I Don't Know Anymore", description: "I dunno just do event stuff.", start_time: Time.now.middle_of_day(), end_time: Time.now.end_of_day(), :location => l1)

e3.sponsors << s1
e3.meetings << e3m1
e3.meetings << e3m2

a1.save
a2.save
a3.save
a4.save
s1.save
s2.save
e1.save
e1m1.save
e1m2.save
e2.save
e2m1.save
e2m2.save
e3.save
e3m1.save
e3m2.save