# _Animal Shelter API_
### By Jozy Kinnaman
### June, 2020

## Description
A Ruby on Rails Friday Project excercise for building  an API. Epicodus, 2020.

## Setup//Install
 * Clone in terminal : https://github.com/JoseyKinnaman/animal_shelter_api.git
  * Navigate into directory by typing "cd animal_shelter"
  * Type "bundle install" to bundle gems
  * Type "rake db:setup" to create databases and migrations
  * Type "rails s" to run on local server
  * Type "rails c" to try out on rails console
  * Access "localhost:3000" 
  * Heroku in Postman or cURL for calls. 

# Endpoints

## GET (All and By ID)
* /pets returns all pets and their parameters (id, breed, age, desc, gender, adoptable, species)
* /pets/:id returns an pet and its parameters matching the id
<!-- * /pets/random will return a random pet and its parameters -->

## DELETE
* /pets/:id will delete an pet and its parameters matching the id

## POST
* /pets will create an pet and add it to the database

## PUT
* /pets/:id will update a parameter or parameters of an pet

## Known Bugs
  * _no known bugs_

## Contact and Support
jozypants@gmail.com

## Technologies Used
  * Ruby
  * Rails
  * Active record
  * Postgres

## License 
Jozy Kinnaman (c) 2020 MIC

# Animal Shelter API Documentation 
This API uses `POST` request to communicate and HTTP [response codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) to indenticate status and errors. All responses come in standard JSON. All requests must include a `content-type` of `application/json` and the body must be valid JSON.

## Response Codes 
### Response Codes
```
200: Success
400: Bad request
401: Unauthorized
404: Cannot be found
405: Method not allowed
422: Unprocessable Entity 
50X: Server Error
```
### Error Codes Details
```
100: Bad Request
110: Unauthorized
120: User Authenticaion Invalid
130: Parameter Error
140: Item Missing
150: Conflict
160: Server Error
```
### Example Error Message
```json
http code 402
{
    "code": 404,
    "message": "Cannot be found
    ",
    "resolve": "Couldn't find Pet with 'id'=101"
}
```



