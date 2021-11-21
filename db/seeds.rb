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


Category.create(title: 'Web Design & IT- GH30', description: 'handyman', range: '')
Category.create(title: 'Plastic Pickup - GH20', description: 'handyman', range: '')
Category.create(title: 'Shopping - GH30', description: 'handyman', range: '')
Category.create(title: 'Errands - GH35', description: 'handyman', range: '')
Category.create(title: 'Handymen - GH100', description: 'handyman', range: '')
Category.create(title: 'Cleaning - GH100', description: 'handyman', range: '')
Category.create(title: 'Phone & Laptop Repairs - GH200', description: 'handyman', range: '')
Category.create(title: 'Minor Repair - GH100', description: 'handyman', range: '')
Category.create(title: 'Photography - GH200', description: 'handyman', range: '')



