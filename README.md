# Fantasy Pet Shelter API

#### An API exploration

#### By Mike Wright

## Technologies Used

* Ruby 2.6.10
* Rails 5.2.8
* Postgres
* psql
* faker
* Postman



## This is a custom API for a fantasy animal shelter. At the top level you have species which contain species_name and latin_name. From there you have the pets which contain name, klass, level, and a species_id.

## Setup/Installation Requirements

* Clone this repo
* Run `postgres` in your terminal to start your sql server
* In a new terminal, navigate to the root directory of this repo and run `bundle install` to install all required gems.
* Run `rake db:create` to create development and test databases.
* Run `rake db:migrate` to build necessary tables for the database.
* Run `rake db:seed` to seed the database.
* Run `rails s` in the terminal from the root directory to start the server

## Endpoints
(Accepted params. For Species it must have species_name and latin_name.
For pets it must have name, klass, level(from 1-20), and a Species_id which can be found in the route. Pets also have an optional paramater which is Quote)
* Open up postman
* For species [GET, POST] http://localhost:3000/species
* To update a species name [PUT] http://localhost:3000/species/[species_id]?species_name=[updated_name]
* To update a species latin_name [PUT] http://localhost:3000/species/[species_id]?latin_name=[updated_latin
_name]
* To delete a species [DELETE] http://localhost:3000/species/[species_id]
* To view all pets of a species [GET] http://localhost:3000/species/[species_id]/pets
* To add a pet to a species [POST] http://localhost:3000/species/[species_id]/?name=[desired_name]&klass=[desired_klass]&level=[level_between_1-20]&quote[desired_quote*]
* To delete a pet, [DELETE] http://localhost:3000/species/[species_id]/pets/[pet_id]
* For paginated response [GET] localhost:3000/species?page=[desired_page#]


## Known Bugs

* At this time, paginated results will pull any pet regardless of species_id

## License 

MIT

## Copyright (c) 05-10-2022 Mike Wright
