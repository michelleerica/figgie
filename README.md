# README

Screenshot

https://res.cloudinary.com/michelleerica/image/upload/o5fvzjyktmuc3fzgsusb

Introduction
  Figgie is a food specific photo sharing app, which allows users to share photos of dishes they have eaten, and save photos to favourites for future reference.

  The app is designed for millenials who like eating out and want to know what their meal will look like before they order. The app is aimed at taking the guess work out of ordering and also encourage users to try new places.

  With the ability to search across different venues, categories and cuisines, users are able to find the meal they are looking for!


Link to Heroku
  https://figgie.herokuapp.com/

Packages used
  jquery-rails
  cloudinary
  materialize.css

Features
  Users can:
  * upload photos of dishes and tag them by venue, cuisine and category
  * 'like'/favourite photos for future reference
  * browse photos based on cuisine, user, category and venue

Known bugs
  * Heroku version
    * layout is not very nice given issues with using bootstrap
    * users are not able to un-like photos
  * Current GitHub version
    * Dish upload form (main upload form) does not create associations between the dish uploaded and venue - this appears to be an issue with display due to the use of materialize

Future releases
  * improved layout
  * functionality to:
    * 'like' venues
    * follow other other users
    * geo-tagging
    * Yelp API integration
    * users can leave comments


Lessons learned / wins
  * Try not to do too many things at once (keep things simple at first)
  * Be clear on what you want to achieve, and build up off that
  * Get the basics done once (and done right) and go from there. But in saying that, I learnt a LOT about the interrelationship of models and associations in rails.
