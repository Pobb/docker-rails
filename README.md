# Create rails app using docker
Sample files (Dockerfile, docker-compose.yml, run.sh) to easily create new rails app. Kiss.

## Prerequisites
* Docker
* Docker-compose
* Internet connection (*download docker's images take time ..*)

## 5 steps
1. Clone this project : it contains 3 files
2. docker-compose build
3. docker-compose run web rails new . --force --no-deps --database=postgresql --no-documentation
4. Edit config/database.yml and add : 
  * host: db
  * username: "postgres"
  * password: "postgres"
5. docker-compose up

Visit http://localhost:4000 and you are done !