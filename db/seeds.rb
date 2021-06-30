# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Meetup.delete_all
# Post.delete_all
# Comment.delete_all


Meetup.create([
    {title: "Watergun Fight!", date: "July 10th, 2021", time: "12:00 pm", location: "Baker Park, Frederick, Maryland", description: "For ages 5-12! Bring your own water guns/balloons or use one of ours provided at the venue!", interested_count: 126},
    {title: "Babies and Books", date: "May 1st, 2021", time: "9:00 am", location: "Cleveland Public Library, Cleveland, Ohio", description: "Bring your little ones for story time. Books focused on 0-18mo learning, siblings welcome.", interested_count: 54},
    {title: "Paint Night", date: "November 9th, 2021", time: "7:00 pm", location: "Joe's Pizza Place, Austin, Texas", description: "Family friendly paint night. Come and enjoy world-class pizza while creating some art!", interested_count: 35}
])

Post.create([
    {body: 'What are the best activities for rainy days in with young kids?'},
    {body: 'Someone, anyone, please.... tips for a dad just trying to navigate having a teenage daughter!?'},
    {body: 'I found the greatest place to get the kids out for some nature fun!'}
])

Comment.create([
    {body: 'Try making salt dough or putting paint into a large ziplock bag and letting them finger paint(mess free).', post_id: 1},
    {body: 'Do not push!! Let her have some space and feel independent. Try to let her know you are there and support her.', post_id: 2},
    {body: 'I have been dying to find a new place to go! Where is it?', post_id: 3}
])