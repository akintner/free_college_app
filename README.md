# README

This project's front-end template was built with Create React App and can be found here: https://github.com/noahpeden/free-college-abroad

This overall imetus behind this app comes from the fact that there are more than a dozen countries around the world offering completely free college tuition for undergraduate degrees, with many of those even offering classes in English. This site;s front-end was built in React Redux, and the backend is set up in Rails5 and PostgreSQL. Based on user input, the site pulls in university options and lists some basic information about tuition or application fees, the languages of coursework, and a link to the university.

* Ruby version 2.3.0

* Rails version: 5.0.1

* System dependencies: gem dependencies are listed in the Gemfile and can be downloaded by running `bundle` from your terminal.

* General Configuration: clone down this repo, `bundle` to ensure all the Gemfile dependencies are loaded on your local computer, and then you will need to load, migrate, and seed the database with the CSV files.

* Database Configuration: once you have cloned the repo and bundled for gems, you will have to set up the database on your local machine. To do this, please run the following commands from your terminal in this order:
<br>
`rake db:create` (this will create the postgresql database needed to run the project)
<br>
`rake db:migrate` (this will load all the database tables with the information specified in the migration files)
<br>
`rake db:test:prepare` (this will ensure that you can run the test specs)
<br>
`rake db:import_csvs` (this will load all of the info from the CSV files into the database)  

* How to run the test suite: once you have set up the database, you can run the test specs by simply typing `rspec` into the terminal. 

* How to run the program from your local browser: if you would like to run the program from your browser to see how the API is returning JSON objects, please type `puma` or `rails server` into the terminal and then open up a browser of your choice and type in the following basic URL `localhost:3000/api/v1/regions`, and the word regions in the URL can be substituted with any of the files from the database tables (regions, countries, universities) to access the main directory for each of those collections in the database. The app can also be accessed on heroku at the following address: https://freecollegeapp.herokuapp.com/api/v1/countries
