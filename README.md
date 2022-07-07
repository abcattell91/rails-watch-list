# Movie Watchlist App

This is a movie watch list web app, written in ruby on rails and hosted on Heroku. This app allows you to create watch lists of your favourite movies seeded from the TMDB Api

> Have a go! [_here_](https://rails-watch-list-22.herokuapp.com/). <!-- If you have the project hosted somewhere, include the link here. -->
## Table of Contents
- [General Info](#general-information)
- [Technologies Used](#technologies-used)
- [Features](#features)
- [Setup](#setup)
- [Project Status](#project-status)
- [Room for Improvement](#room-for-improvement)
- [Acknowledgements](#acknowledgements)

<!-- * [License](#license) -->

## General Information

- This is a movie watch list web app, written in ruby on rails and hosted on Heroku.
- Create lists and add movies to the list that you like
- This project was completed as part of the Le Wagon fullstack developer bootcamp and serv.ed as an opportunity to develop my skills in:

* ruby on rails
* javascript
* scss
* javascript libraries
* git version control
* production deployment

## Technologies Used

- Rails 6.1.5.1 - Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates)
- Ruby 3.0.3
- yarn 1.22.17
- SCSS
- jQuery
- bootstrap 5
- font-awesome 6
- PostgreSQL 12
- TMDB Api

## Features

- Create & Delete Lists
- Add movies to the lists from TMDB seed
- Review the list
- Star rate the list

## Setup

You will need Ruby 3.0.3 and Rails 6.1.5.1. Both can be installed via rbenv
You will also need a Cloudinary account (free is sufficient)
Download/Fork/Clone the repo and cd into the repo root directory in your terminal

To check that you have the correct ruby version run:
`ruby --version`

Run: `touch .env` followed by `echo '.env*' >> .gitignore` <br>
Add your TMDB API to the .env file `API_KEY=*********************************`<br>

Then run:
`bundle install`
to install the required gems

Run:
`yarn install`
to install the js packages

Run:
`rails db:create`
`rails db:migrate`
`rails db:seed`
to set up your database

Run:
`rails s`
to start a local rails server

## Project Status

Project is: _in progress_

## Room for Improvement

To do:

- Add user authentication
- Add TV Shows
- Add more information from TMDB

## Acknowledgements
Created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team along with the help of Le Wagon Teaching Assistants.<br>
This product uses the TMDB API but is not endorsed or certified by TMDB.

