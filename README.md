# Superiori-Tea-API
**API built to support a react tea harvesting game**

Superiori-Tea is a game with five challenges. Each challenge is scored based on meeting specific conditions and the time it took to complete the challenge. When the final challenge is completed, your score is saved in the database. If you were able to beat the top score, you will be added to the leaderboard. 

[Play Game](https://superiori-tea.herokuapp.com/)

![screenshot](https://raw.githubusercontent.com/ashley3schultz/superiori-tea/master/src/components/images/screenshot.png)

## API features
* Allows fetch request from game app
* Allows new game persistence from game app

## Using the API
Superiori-Tea-API is hosted on Heroku and can be viewed at https://superiori-tea-api.herokuapp.com/

## Manual Installation 

### Getting Started 
Make sure Ruby and Rails is installed on device.

### Installing
From the command line:
  ```
  git clone 'git@github.com:ashley3schultz/superiori-tea-api.git'
  ```
  ```
  bundle install
  ```
  ```
  rake db:migrate
  ```
  ```
  rake db:seed
  ```
  ```
  rails s –p 3001
  ```
	
### Built With
* Ruby on Rails
* postgresql
* rack cors
 
## References
* [Live Website](https://superiori-tea.herokuapp.com/)
* [Live API](https://superiori-tea-api.herokuapp.com/)
* [React App Repo](https://github.com/ashley3schultz/superiori-tea-api)
