Dish.destroy_all

d1 = Dish.create name: "1"
d2 = Dish.create name: "2"
d3 = Dish.create name: "3"
d4 = Dish.create name: "4"
d5 = Dish.create name: "5"
d6 = Dish.create name: "6"
d7 = Dish.create name: "7"
d8 = Dish.create name: "8"

Photo.destroy_all

p1 = Photo.create image: "http://img.taste.com.au/3mYHXsD_/taste/2016/11/sushi-for-kids-81300-1.jpeg", description: "Sushi", price_range: "$10-20"
p2 = Photo.create image: "http://www.makesushi.com/wp-content/uploads/2015/02/mosaic-sushi-roll-evolution.jpg", description: "Delicious", price_range: "$50-70"
p3 = Photo.create image: "http://www.bunburyforum.com.au/_source/img/dining-img/24112016_pmad_jll_bunbury_forum_sushi_o.jpg", description: "pretty ok", price_range: "$100-150"
p4 = Photo.create image: "http://www.burgermeadelaide.com/wp-content/uploads/2013/02/fancy-burger_rs.jpg?w=690", description: "yum", price_range: "$100-150"
p5 = Photo.create image: "https://media-cdn.tripadvisor.com/media/photo-s/06/f1/72/43/fb-s-fancy-burgers.jpg", description: "so good", price_range: "$10-15"
p6 = Photo.create image: "http://www.ikea.com/au/en/images/products/vafflor-waffles-frozen__0463622_PE608823_S4.JPG", description: "fancy waffles", price_range: "$10-15"
p7 = Photo.create image: "http://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/10/9/4/WU1110H_Chicken-and-Waffles_s4x3.jpg.rend.hgtvcom.616.462.jpeg", description: "pretty standard", price_range: "$10-15"
p8 = Photo.create image: "http://d2gk7xgygi98cy.cloudfront.net/1873-3-large.jpg", description: "Waffles were amazing", price_range: "$10-15"
p9 = Photo.create image: "http://s3.amazonaws.com/spoonuniversi-wpengine/spoonuniversi/wp-content/uploads/sites/2/2013/03/waffle.jpg", description: "lunch", price_range: "$10-15"


puts "Created #{ Photo.all.length } photos."

User.destroy_all
u1 = User.create username: "Michelle", full_name: "Michelle", email: "michellemichelle@gmail.com", password: 'chicken', image: "https://tippie.uiowa.edu/sites/tippie.uiowa.edu/files/images/directory/highly-michelle.jpg"
u2 = User.create username: "Bob", full_name: "Bob", email: "bob@gmail.com", password: 'chicken', image: "https://yt3.ggpht.com/-uJh4oSQAwak/AAAAAAAAAAI/AAAAAAAAAAA/AMGKfKvDP3w/s900-c-k-no-mo-rj-c0xffffff/photo.jpg"
u3 = User.create username: "Mel", full_name: "Mel", email: "mel@gmail.com", password: 'chicken', image: "https://pbs.twimg.com/profile_images/624500774811234304/u3C5awjX.jpg"
puts "Created #{ User.all.length } users."

Venue.destroy_all

v1 = Venue.create venue_name: "Masuya", postcode: 2000, business_description: "Japanese at its best"
v2 = Venue.create venue_name: "Burgers & Co", postcode: 2000, business_description: "We serve burgers"
v3 = Venue.create venue_name: "Waffle and stuff", postcode: 2000, business_description: "Waffle-mania"
v4 = Venue.create venue_name: "Japanese two", postcode: 2000, business_description: "Jap-mania"
v5 = Venue.create venue_name: "Waffle on and on", postcode: 2000, business_description: "Waffles"

puts "Created #{ Venue.all.length } venues."

Cuisine.destroy_all
cu1 = Cuisine.create category: "Japanese"
cu2 = Cuisine.create category: "American"
cu3 = Cuisine.create category: "Chinese"
cu4 = Cuisine.create category: "Italian"
cu5 = Cuisine.create category: "French"
cu6 = Cuisine.create category: "Fast food"

Category.destroy_all
cat1 = Category.create name: "Sushi"
cat2 = Category.create name: "Burger"
cat3 = Category.create name: "Sandwich"
cat4 = Category.create name: "Waffles"
cat5 = Category.create name: "Rice"
cat6 = Category.create name: "Pork"
cat7 = Category.create name: "Vegetarian"


#link dishes to photos
d1.photos << p1
d2.photos << p2 << p3
d3.photos << p4
d4.photos << p5
d5.photos << p6
d6.photos << p7
d7.photos << p8


#link categories to dishes
cat1.dishes << d1 << d2
cat2.dishes << d3 << d4
cat4.dishes << d5 << d6 << d7
d8.categories << cat3

#link cuisines to dishes
cu1.dishes << d1 << d2
cu2.dishes << d3 << d4 << d5 << d6 << d7 << d8
cu6.dishes << d8

#link user to photos
u1.photos << p1 << p4 << p6
u2.photos << p2 << p3 << p5 << p7
u3.photos << p8 << p9

#link users to dishes
u1.dishes << d1 << d3 << d5
u2.dishes << d2 << d4 << d6
u3.dishes << d7

#link venues to dishes
v1.dishes << d1
v3.dishes << d5 << d6 << d7
v4.dishes << d2
v5.dishes << d3 << d4
