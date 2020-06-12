# Animal Shelter API


#### By Reid Ashwill 

## Description
This API is designed to be used by an animal shelter.  It allows the user to do many userful things from a user and administrative standpoint.  There is currently no authentication in place because i have been unsucessful in testing authentication.  I would like to add authentication to a later build of this API to gain more knowledge in integration testing.

## Specs

| SPECS                | URL EXAMPLE               | PARAMS                                                                      |
|----------------------|---------------------------|-----------------------------------------------------------------------------|
| GET requests         |                           |                                                                             |
| get all cats         | /cats                     |                                                                             |
| get all dogs         | /dogs                     |                                                                             |
| get one cat          | /cats/11                  | cat id                                                                      |
| get one dog          | /dogs/7                   | dog id                                                                      |
| get random cat       | /cats/random              |                                                                             |
| get random dog       | /dogs/random              |                                                                             |
| search cats          | /cats/search?query=smudge | cat name                                                                    |
| search dogs          | /dogs/search?query=lilly  | dog name                                                                    |
| search dogs by breed | /dogs/breed?query=Terrier | breed name (case sensitive)                                                 |
| search cats by breed | /cats/breed?query=Khao    | breed name (case sensitive)                                                 |
| POST requests        |                           |                                                                             |
| post a cat           | /cats                     | name (string), age (integer), is_available (boolean set to true by default) |
| post a dog           | /dogs                     | name (string), age (integer), is_available (boolean set to true by default) |
| PATCH requests       |                           |                                                                             |
| update a cat         | /cats/11                  | name (string), age (integer), is_available (boolean set to true by default) |
| update a dog         | /dogs/7                   | name (string), age (integer), is_available (boolean set to true by default) |
| DELETE requests      |                           |                                                                             |
| delete a cat         | /cats/11                  | cat id                                                                      |
| delete a dog         | /dogs/7                   | dog id                                                                      |


## User Stories

As a user I would like to see a list of all cats at the shelter

As a user I would like to see a list of all dogs at the shelter

As a user I would like to be able to search for cats by name

As a user I would like to be able to search for dogs by name

As a user I would like to be able to display a random cat or dog.

As an admin i would like to be able to add animals.

As an admin in would like to be able to edit animals.

As an admin i would like to be able to delete animals.


## Setup/Installation Requirements
* _requires:_

* _Ruby (v 5.2.0)_
* _Rails_
* _Postgres_


* _Navigate to https://github.com/reidashwill/week_13_project_
* _clone the respository to your local machine_
* _navigate to the cloned directory and open in your text editor of choice to view code_

* _from the terminal inside the cloned project directory, run the command bundle install to bundle and install all required gems._
* _run the commands rake db:create, followed by rake db:migrate to configure the database on your machine_
* _run the command rspec to run the included suite of tests_
* _run the command rails s to start a local server_
* _make calls to any of the endpoints described in the specs table either in the browser of your choice, or in postman_



* _Similarly, make calls to any endpoint described in the specs table to the live deployment of the API here: https://reidsapi.herokuapp.com/[your_endpoint_here]_



## Known Bugs
No known bugs at this time


## Technologies Used

* _Ruby_
* _Rails_
* _Rspec_
* _Kaminari_
* _PgSearch_
* _Faker_
* _Simplecov_
* _HTML (erb)_
* _Bootstrap / SASS_
* __

### License

*Licensed under the MIT license*

Copyright (c) 2020 **_Reid Ashwill_**