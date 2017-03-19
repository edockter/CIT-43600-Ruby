# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t1  = Task.create!(label: "Bananas",  due_date: Date.current.tomorrow, completion_date: nil)
t2  = Task.create!(label: "Whiskey",  due_date: Date.current.tomorrow, completion_date: nil)
t3  = Task.create!(label: "Kefir",    due_date: Date.current.tomorrow, completion_date: nil)
t4  = Task.create!(label: "Kohlrabi", due_date: Date.current.tomorrow, completion_date: nil)
t5  = Task.create!(label: "BONUS Assignment: Putting A Rails App Online with Heroku", due_date: Date.new(2017, 03, 20), completion_date: DateTime.new(2017, 03, 17, 8, 5, 0))
t6  = Task.create!(label: "Assignment: WorldPopulation", due_date: Date.today, completion_date: nil)
t7  = Task.create!(label: "Assignment: Campus Events, part 4", due_date: Date.today, completion_date: DateTime.new(2017, 03, 01, 23, 30, 0))
t8  = Task.create!(label: "Assignment: Campus Events, part 3", due_date: Date.today, completion_date: DateTime.new(2017, 02, 20, 21, 15, 0))
t9  = Task.create!(label: "Wash the Ball Pit", due_date: Date.today, completion_date: Time.now.middle_of_day() )
t10 = Task.create!(label: "Make the Donuts", due_date: Date.today, completion_date: Time.now.middle_of_day() )

c1 = Category.create!(label: 'Groceries')
c2 = Category.create!(label: 'Homework Assignments')
c3 = Category.create!(label: 'Chores')

c1.tasks << t1
c1.tasks << t2
c1.tasks << t3
c1.tasks << t4

c2.tasks << t5
c2.tasks << t6
c2.tasks << t7
c2.tasks << t8

c3.tasks << t9
c3.tasks << t10

c1.save


c2.save


c3.save
