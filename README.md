# README
In collaboration with jakobfischer17

The purpose of this application is to provide interesting insights on tornadoes
in the US derived from raw data in the form of different visualisations.

This README informs on how to install this application locally. An online
version can be found at https://www.awd1.herokuapp.com

Follow the following steps (it is expected that a UNIX-based OS is used
  and at least Ruby 2.4.1 and Ruby on Rails 5.2.1 & PostgreSQL are installed):

* Download and extract the .zip file and navigate to the root folder
  in Terminal.

* run "bundle install" to install all gems and dependencies from the Gemfile
  (run "gem install bundler" if not installed)

* Open /config/database.yml and change username & password to your local data-
  base details (for test, development & production)

* run "rake db:migrate" to create the tables

* run "rake db:seed" and "rake tornadoes:seed_tornadoes" to seed the tables with
  data from the CSV files

* run "rails s" to start the local server

* Open a browser window and navigate to "localhost:3000" to view & start using
  the application. Even though this runs the application locally, make sure you
  are connected to the internet so that the application can receive data e.g.
  from the Bootstrap CDN or from Google Maps API

* Have fun :) For any questions, email j.fischer.17@aberdeen.ac.uk
  or m.lilchev.17@aberdeen.ac.uk

  The different accessible routes on the application are:
  /
  /visualisation/index/
  /tabledata/index/
  /eventdetails/:id
  /stormdata/:id
  Obtaining JSON:
  /api/episode
  /api/event
  /api/state
  /eventdetails.json
  /eventdetails/:id.json
