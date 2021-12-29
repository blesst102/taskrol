# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Proposal.create(status: 'Plumbing Work', arrival_duration: '30mins')
Requestoption.create(title: 'Small Task', description: '1 hr')
Requestoption.create(title: 'Large Task', description: '2-3 hrs')
Requestoption.create(title: 'Heavy Package', description: 'Heavy')
Requestoption.create(title: 'Medium Package', description: 'Medium')
Requestoption.create(title: 'Small Package', description: 'Small')
Requestoption.create(title: 'Long Distance', description: 'long')
Requestoption.create(title: 'Short Distance', description: 'Short')


Category.create(title: 'Web Design & IT- GH 300', description: 'handyman', range: '')
Category.create(title: 'Plastic Pickup - GH 20', description: 'handyman', range: '')
Category.create(title: 'Shopping - GH 50', description: 'handyman', range: '')
Category.create(title: 'Errands - GH 35', description: 'handyman', range: '')
Category.create(title: 'Handymen - GH 100', description: 'handyman', range: '')
Category.create(title: 'Cleaning - GH 100', description: 'handyman', range: '')
Category.create(title: 'Phone & Laptop Repairs - GH 200', description: 'handyman', range: '')
Category.create(title: 'Minor Repair - GH 50', description: 'handyman', range: '')
Category.create(title: 'Photography - GH 200', description: 'handyman', range: '')
Category.create(title: 'Art & Design - GH 200', description: 'handyman', range: '')
Category.create(title: 'Landscapping - GH 200', description: 'handyman', range: '')
Category.create(title: 'Driver - GH 200', description: 'handyman', range: '')
Category.create(title: 'Authomechanic - GH 200', description: 'handyman', range: '')

Skill.create!(title: "AC Installer")
Skill.create!(title: "Web designer")
Skill.create!(title: "Janitor")
Skill.create!(title: "Plumber")
Skill.create!(title: "Photography")
Skill.create!(title: "Landscapping")
Skill.create!(title: "Decoration")
Skill.create!(title: "Phone repairs")
Skill.create!(title: "Laptop repairs")
Skill.create!(title: "Art & Design")
Skill.create!(title: "Mechanic")
Skill.create!(title: "Driving")
Skill.create!(title: "Electronic repairs")
Skill.create!(title: "Fashion Design")

