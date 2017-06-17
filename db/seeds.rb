Photo.destroy_all

p1 = Photo.create image: "http://www.fillmurray.com/343/432", description: "Super yummy awesomeness", price_range: "$10-20"
p2 = Photo.create image: "http://www.fillmurray.com/343/500", description: "Delicious", price_range: "$50-70"
p3 = Photo.create image: "http://www.fillmurray.com/250/432", description: "pretty ok", price_range: "$100-150"
p4 = Photo.create image: "http://www.fillmurray.com/250/432", description: "yum", price_range: "$100-150"
p5 = Photo.create image: "http://www.fillmurray.com/190/420", description: "so good", price_range: "$10-15"

puts "Created #{ Photo.all.length } photos."

User.destroy_all
u1 = User.create username: "Michelle", full_name: "Michelle Lo", password: 'chicken'
u2 = User.create username: "Bob", full_name: "Bob Lo", password: 'chicken'
puts "Created #{ User.all.length } users."

Venue.destroy_all

v1 = Venue.create venue_name: "Masuya", postcode: 2000, business_description: "Japanese at its best"
v2 = Venue.create venue_name: "Burgers & Co", postcode: 2000, business_description: "We serve burgers"

puts "Created #{ Venue.all.length } venues."

Cuisine.destroy_all
c1 = Cuisine.create category: "Japanese"
c2 = Cuisine.create category: "Modern Australian"

#connect photos and users
u1.photos << p1 << p2 << p3 << p4
u2.photos << p5

# user created venues
u1.venues << v1
u2.venues << v2

#photos connected to venues
v1.photos << p1 << p2 << p3 << p4
v2.photos << p5

#link photos to cuisines (M2M)
c1.photos << p1 << p2 << p3 << p4
p5.cuisines << c2

#link cuisines to venues (M2M)
v1.cuisines << c1
c2.venues << v2

#
# s6.mixtapes << m2 << m3
# s3.mixtapes << m3
#
# puts "Song '#{ s3.name }' by '#{ s3.artist.name }' appears on mixtapes:"
# p s3.mixtapes.pluck :title
#
#
# Mixtape.all.each do |m|
#   puts '-' * 50
#   puts "Mixtape '#{ m.title }' has songs:"
#   p m.songs.pluck :name
#   puts "SO FIRE!!!1" if m.is_fire
# end
#
# Genre.destroy_all
# g1 = Genre.create name: "Nautical Rock"
# g2 = Genre.create name: "Text Rock"
# g3 = Genre.create name: "Sad Experimental"
# g4 = Genre.create name: "Post-Jazz"
# g5 = Genre.create name: "Math Rock"
# g6 = Genre.create name: "Glam Rock"
#
# puts "Created #{ Genre.all.length } genres."
#
#
#  # Add  "All By Electricity"(s1) and "Books on Trains"(s2) to the songs for "Shipping News"(a1)
# a1.songs << s1 << s2
#
# a2.songs << s3
# a3.songs << s4 << s5
# a4.songs << s6
# puts "Artist '#{ a1.name }' has #{ a1.songs.length } songs."
#
# alb1.songs << s1 << s2
# alb2.songs << s3
# alb3.songs << s4
# alb4.songs << s6
# alb5.songs << s5
#
# puts "Album '#{ alb1.name }' has #{ alb1.songs.length } songs."
#
# # add a bunch of genres to each song
# s1.genres << g1 << g2 << g5 << g3
# s2.genres << g1 << g2 << g5 << g3
# s3.genres << g1
# s4.genres << g3 << g5
# s5.genres << g3
# s6.genres << g4 << g3
#
# # from the other direction: add some songs to a genre
# g6.songs << s4 << s5
#
# Genre.all.each do |g|
#   puts '-' * 50
#   puts "Genre '#{ g.name }' has songs:"
#   puts g.songs.pluck :name
# end
#
# Mixtape.destroy_all
# m1 = Mixtape.create title: "Make-out Music", is_fire: true
# m2 = Mixtape.create title: "Boat Jams", is_fire: true
# m3 = Mixtape.create title: "House-cleaning", is_fire: true
#
# m1.songs << s3 << s5 << s6 << s4
# m2.songs << s2 << s1
#
# s6.mixtapes << m2 << m3
# s3.mixtapes << m3
#
# puts "Song '#{ s3.name }' by '#{ s3.artist.name }' appears on mixtapes:"
# p s3.mixtapes.pluck :title
#
#
# Mixtape.all.each do |m|
#   puts '-' * 50
#   puts "Mixtape '#{ m.title }' has songs:"
#   p m.songs.pluck :name
#   puts "SO FIRE!!!1" if m.is_fire
# end
#
#
#
#
# puts "Done!"
