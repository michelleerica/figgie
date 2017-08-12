Dish.destroy_all

d1 = Dish.create name: "1"
d2 = Dish.create name: "2"
d3 = Dish.create name: "3"
d4 = Dish.create name: "4"
d5 = Dish.create name: "5"
d6 = Dish.create name: "6"
d7 = Dish.create name: "7"
d8 = Dish.create name: "8"
d9 = Dish.create name: "9"
d10 = Dish.create name: "10"
d11 = Dish.create name: "11"
d12 = Dish.create name: "12"
d13 = Dish.create name: "13"
d14 = Dish.create name: "14"
d15 = Dish.create name: "15"
d16 = Dish.create name: "16"
d17 = Dish.create name: "17"
d18 = Dish.create name: "18"
d19 = Dish.create name: "19"

Photo.destroy_all

p1 = Photo.create image: "http://img.taste.com.au/3mYHXsD_/taste/2016/11/sushi-for-kids-81300-1.jpeg", description: "Sushi", price_range: "$10-20"
p2 = Photo.create image: "http://www.makesushi.com/wp-content/uploads/2015/02/mosaic-sushi-roll-evolution.jpg", description: "Delicious", price_range: "$50-70"
p4 = Photo.create image: "http://www.readersdigest.ca/wp-content/uploads/2015/11/gourmet-burger.jpg", description: "yum", price_range: "$100-150"
p5 = Photo.create image: "https://media-cdn.tripadvisor.com/media/photo-s/06/f1/72/43/fb-s-fancy-burgers.jpg", description: "so good", price_range: "$10-15"
p6 = Photo.create image: "http://www.ikea.com/au/en/images/products/vafflor-waffles-frozen__0463622_PE608823_S4.JPG", description: "fancy waffles", price_range: "$10-15"
p7 = Photo.create image: "http://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/10/9/4/WU1110H_Chicken-and-Waffles_s4x3.jpg.rend.hgtvcom.616.462.jpeg", description: "pretty standard", price_range: "$10-15"
p8 = Photo.create image: "http://d2gk7xgygi98cy.cloudfront.net/1873-3-large.jpg", description: "Waffles were amazing", price_range: "$10-15"
p9 = Photo.create image: "http://s3.amazonaws.com/spoonuniversi-wpengine/spoonuniversi/wp-content/uploads/sites/2/2013/03/waffle.jpg", description: "lunch", price_range: "$10-15"
p10 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526640/11352381_1659351640961440_104985252_n_kvib3a.jpg", description: "FANTASTIC", price_range: "$10-15"
p11 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526638/11386541_793576480737831_1454801526_n_gblerm.jpg", description: "Best thing ever", price_range: "$10-15"
p12 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526631/1530768_378518472293997_2112759550_n_bojiee.jpg", description: "*drool*", price_range: "$10-15"
p13 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526626/1209684_523426317771622_362068721_n_l1bz29.jpg", description: "Loved it!", price_range: "$10-15"
p14 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526620/13525379_935044206617658_108364110_n_azjljf.jpg", description: "Pretty basic", price_range: "$10-15"
p15 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526615/13551574_1768690683410670_1985312151_n_wrecse.jpg", description: "Overated but worth it", price_range: "$10-15"
p16 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526607/13423418_265285030499601_371807292_n_gsuxjj.jpg", description: "Australia's finest", price_range: "$10-15"
p17 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526185/17333631_1840817239577241_7118590779072708608_n_m5w1ta.jpg", description: "So creative", price_range: "$10-15"
p18 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526172/17333986_583815388491573_8342267416000069632_n_po1jsy.jpg", description: "So fresh!", price_range: "$10-15"
p19 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526164/17077177_405706029782374_7776902990878736384_n_podwla.jpg", description: "Pre-made disappointment", price_range: "$10-15"
p20 = Photo.create image: "15048169_385656835158772_3184817910405136384_n_tzyen7", description: "Ammaazzzinnggg", price_range: "$10-15"
p21 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526149/14482738_533008150236774_9109743720646836224_n_od3oxp.jpg", description: "Worth the calories", price_range: "$10-15"
p22 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526143/15046861_1779285255672804_8535526775222960128_n_ituwgj.jpg", description: "Regret", price_range: "$10-15"
p23 = Photo.create image: "http://res.cloudinary.com/michelleerica/image/upload/v1502526132/14676754_879147955553555_3942361905611407360_n_bs7nyd.jpg", description: "Overpriced", price_range: "$10-15"


puts "Created #{ Photo.all.length } photos."

User.destroy_all
u1 = User.create username: "Michelle", full_name: "Michelle", email: "michellemichelle@gmail.com", password: 'chicken', image: "https://tippie.uiowa.edu/sites/tippie.uiowa.edu/files/images/directory/highly-michelle.jpg"
u2 = User.create username: "Bob", full_name: "Bob", email: "bob@gmail.com", password: 'chicken', image: "https://yt3.ggpht.com/-uJh4oSQAwak/AAAAAAAAAAI/AAAAAAAAAAA/AMGKfKvDP3w/s900-c-k-no-mo-rj-c0xffffff/photo.jpg"
u3 = User.create username: "Mel", full_name: "Mel", email: "mel@gmail.com", password: 'chicken', image: "https://pbs.twimg.com/profile_images/624500774811234304/u3C5awjX.jpg"
u4 = User.create username: "Nathan", full_name: "Mel", email: "nathan@gmail.com", password: 'chicken', image: "http://res.cloudinary.com/michelleerica/image/upload/v1502528521/17493555_853144028157005_4516221982202658816_n_1_jhsimp.jpg"
puts "Created #{ User.all.length } users."

Venue.destroy_all

v1 = Venue.create venue_name: "Masuya", postcode: 2000, business_description: "Japanese at its best"
v3 = Venue.create venue_name: "Waffle and stuff", postcode: 2000, business_description: "Waffle-mania"
v4 = Venue.create venue_name: "Nippon restaurante", postcode: 2000, business_description: "Jap-mania"
v5 = Venue.create venue_name: "Waffle on and on", postcode: 2000, business_description: "Waffles"

v8 = Venue.create venue_name: "Vegland", postcode: 2000, business_description: "No nonsense thai food"
v9 = Venue.create venue_name: "Dessert heaven", postcode: 2000, business_description: "Japanese with a side of sunshine"

puts "Created #{ Venue.all.length } venues."

Cuisine.destroy_all
cu1 = Cuisine.create category: "Japanese"
cu2 = Cuisine.create category: "American"
cu3 = Cuisine.create category: "Chinese"
cu4 = Cuisine.create category: "Italian"
cu5 = Cuisine.create category: "French"
cu6 = Cuisine.create category: "Fast food"
cu7 = Cuisine.create category: "Hipster"
cu8 = Cuisine.create category: "Pub"
cu9 = Cuisine.create category: "Thai"

Category.destroy_all
cat1 = Category.create name: "Sushi"
cat2 = Category.create name: "Burger"
cat3 = Category.create name: "Sandwich"
cat4 = Category.create name: "Sweets"
cat5 = Category.create name: "Rice"
cat6 = Category.create name: "Pork"
cat7 = Category.create name: "Vegetarian"
cat8 = Category.create name: "Lunch"
cat9 = Category.create name: "Dessert"
cat10 = Category.create name: "Dinner"


#link dishes to photos
d1.photos << p1
d2.photos << p2
d3.photos << p4
d4.photos << p5
d5.photos << p6
d6.photos << p7
d7.photos << p8
d8.photos << p10 << p11
d9.photos << p12 << p13
d10.photos << p14
d11.photos << p15
d12.photos << p16
d13.photos << p17
d14.photos << p18
d15.photos << p19
d16.photos << p20
d17.photos << p21
d18.photos << p22
d19.photos << p23


#link categories to dishes
cat1.dishes << d1 << d2 << d13
cat2.dishes << d3 << d4
cat4.dishes << d5 << d6 << d7 << d17
cat9.dishes << d8 << d11 << d12
d8.categories << cat3
cat7.dishes << d10
cat8.dishes << d16 << d19
cat9.dishes << d14 << d15 << d18
cat10.dishes << d13

#link cuisines to dishes
cu1.dishes << d1 << d2 << d13
cu2.dishes << d3 << d4 << d5 << d6 << d7 << d8
cu5.dishes << d18
cu6.dishes << d8
cu9.dishes << d8
cu7.dishes << d8 << d15 << d18
d11.cuisines << cu5 << cu7
d12.cuisines << cu5 << cu7
d13.cuisines << cu7 << cu1
cu5.dishes << d17
d19.cuisines << cu7 << cu2

#link user to photos
u1.photos << p1 << p4 << p6 << p17 << p20
u2.photos << p2 << p5 << p7 << p15
u3.photos << p8 << p9 << p16 << p12
u4.photos << p10 << p11 << p13 << p14 << p19 << p18 << p23 << p22 << p21

#link users to dishes
u1.dishes << d1 << d3 << d5 << d15
u2.dishes << d2 << d4 << d6 << d16 << d19
u3.dishes << d7 << d8 << d10 << d17 << d18
u4.dishes << d11 << d12 << d13 << d14

#link venues to dishes
v1.dishes << d1 << d14
v3.dishes << d5 << d6 << d7
v4.dishes << d2
v5.dishes << d3 << d4 << d8 << d9 << d17 << d19
v8.dishes << d16
v9.dishes << d10 << d11 << d12 << d13 
