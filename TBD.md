# TBD

<br>

<img src="http://i.giphy.com/l2Je5hzZPPV0vkrv2.gif" width="300" height="auto">

<br>

## Summary
Not everyone's body temperature fluctuates the same. What's considered hot for certain people might be cold for others. **TBD** is a weather app that let's users know what to wear based on user settings and the current weather.
<br>


## User Story

**Guests** 

- Can view the current weather for any location


**Users** 

- Can view the current weather for any location
- Can enter personal tempuerature settings. 
- Settings will be saved with each user profile.
- Can add/ remove photos of clothing in user database.

## Use Case

User's start by logging in and entering some personal settings. These settings include: 

- Temperature level that is considered hot
- Temperature level that is considered cold

These settings will be compared with the current weather and a suggestion will be made letting the user know what they should wear. eg. If it's considered "hot" a suggestion will be made to wear a short sleeve shirt. If the chance of raining is greater than 50%, a suggestion will be made to bring an umbrella.

## API
https://www.wunderground.com/weather/api/

## ERD

<img src="http://i.imgur.com/JzyDitu.jpg)" width="300" height="auto">


## Wireframe

<img src="http://i.imgur.com/bKLCKrC.jpg" width="300" height="auto">

<img src="http://i.imgur.com/GNfgTRR.jpg" width="300" height="auto">

<img src="http://i.imgur.com/67pTatz.jpg" width="300" height="auto">

<img src="http://i.imgur.com/UySA8GU.jpg" width="300" height="auto">

<img src="http://i.imgur.com/rWLqhug.jpg" width="300" height="auto">

<img src="http://i.imgur.com/3WuMarQ.jpg" width="300" height="auto">


## Technologies Used

- HTML/CSS
- SQL
- Ruby
- Rails
- jQuery
- Javascript

## Hurdles

1) Creating a form using embedded Ruby to save items to database.
   No controllers were generated for the Tops table and Bottoms table.
   **Solution:** Used jQuery to get the needed values to perform post method.

2) User ability to save to the correct table (tops/bottoms).
   **Solution:** Used jQuery to get value from drop down menu. Passed the value
   to controller using params and implemented in conditional statement.


## Sources
**Access Params Values:**
http://stackoverflow.com/questions/13603570/how-to-access-param-values-in-controller-in-ruby-on-rails

**Rails User Authentication**
https://www.codecademy.com/en/courses/rails-auth/lessons/authentication/exercises/authentication-authentication?action=resume

https://github.com/supritshah1289/Rails-Authentication-System

**Random Array Item**
http://rubyquicktips.com/post/2625525454/random-array-item

**Delete Method**
http://stackoverflow.com/questions/3763031/button-to-action-destroy-looks-for-show

**Embedded Ruby Form**
http://guides.rubyonrails.org/form_helpers.html





