Dish.destroy_all

d1 = Dish.create name: "burger"
d2 = Dish.create name: "sushi"

Photo.destroy_all

p1 = Photo.create image: "http://img.taste.com.au/3mYHXsD_/taste/2016/11/sushi-for-kids-81300-1.jpeg", description: "Sushi", price_range: "$10-20"
p2 = Photo.create image: "http://www.makesushi.com/wp-content/uploads/2015/02/mosaic-sushi-roll-evolution.jpg", description: "Delicious", price_range: "$50-70"
p3 = Photo.create image: "http://www.bunburyforum.com.au/_source/img/dining-img/24112016_pmad_jll_bunbury_forum_sushi_o.jpg", description: "pretty ok", price_range: "$100-150"
p4 = Photo.create image: "http://www.burgermeadelaide.com/wp-content/uploads/2013/02/fancy-burger_rs.jpg?w=690", description: "yum", price_range: "$100-150"
p5 = Photo.create image: "https://media-cdn.tripadvisor.com/media/photo-s/06/f1/72/43/fb-s-fancy-burgers.jpg", description: "so good", price_range: "$10-15"

puts "Created #{ Photo.all.length } photos."

User.destroy_all
u1 = User.create username: "Michelle", full_name: "Michelle Lo", email: "michellemichelle@gmail.com", password: 'chicken', image: "https://tippie.uiowa.edu/sites/tippie.uiowa.edu/files/images/directory/highly-michelle.jpg"
u2 = User.create username: "Bob", full_name: "Bob Lo", email: "bob@gmail.com", password: 'chicken', image: "https://yt3.ggpht.com/-uJh4oSQAwak/AAAAAAAAAAI/AAAAAAAAAAA/AMGKfKvDP3w/s900-c-k-no-mo-rj-c0xffffff/photo.jpg"
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
# v1.photos << p1 << p2 << p3 << p4
# v2.photos << p5
#photos of dishes

d2.photos << p1 << p2 << p3
d1.photos << p4 << p5
#
# connect dishes to users

# #dishes at venues
# d1.venues << v2
# d2.venues << v1

#link dishes to cuisines (M2M)
c1.dishes << d2
d1.cuisines << c2


#link dish to venues (M2M)
v1.dishes << d1
d2.venues << v2

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
