# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
    Model- manages data.
    View- controls the view of the application.
    Controller- controls data and view.

  Researched answer:
    Models for handling data and business logic
    Controllers for handling the user interface and application
    Views for handling graphical user interface objects and presentation 
    
    In ruby on rails,
    each component of the model-view-controller architecture has its place within the app subdirectory—the models, views, and controllers subdirectories respectively.



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the routes in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the about menthod in the file Views/StaticsController
  ```
  class StaticsController < ApplicationController
    def about
      render 'about.html.erb'
    end
  end
  ```

  Step 3: Create the View in the file 'about.html.erb'
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
maps to select menthod. /users/ will get the information of all the users.

/users/1      method="GET"     # :controller => 'users', :action => 'show'
maps to select menthod. /users/1 will get the information about user with user id =1.

/users/new    method="GET"     # :controller => 'users', :action => 'new'
maps to table = Table.new(). /users/new will display form to enter the data to create
new user.

/users/       method="POST"    # :controller => 'users', :action => 'create'
maps to table.save or Table.create(). /users/ will create the user in the table

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
maps to table = Table.find(1). /users/1/edit will display the data for user id 1 
to update the information. 

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
maps to table.save or Table.update(). /users/1 will update the information of 
user id 1 in the table

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
maps to delete. /users/1 will delete the user with user id =1



3b. Which of the above routes must always be passed params and why?
Update and Delete routes must always have passed params, because the update and delete
must be performed on 1 row at a time.


4. What is the public folder used for in Rails?

  Your answer: Files in public folder are accesible by the entire application.

  Researched answer:
  The public directory contains some of the common files for web applications. By default, HTML templates for HTTP errors, such as 404, 422 and 500. Files that are inside this directory are available in https://appname.com/filename directly.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

  GET '/game/:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer :  
  action specifies which url will user the following data.
  method attribute in htmp form contains the http verb.
  
  Researched answer:
  
  The HTML | action Attribute is used to specify where the formdata is to be sent to the server after submission of the form. It can be used in the form element. 
  
  The HTML form method Attribute is used to specify the HTTP method used to send data while submitting the form.

7. Name two rails generator commands and what files they create:

  Your answer:
    1.Rails generate model Car name:string color:string
      It generates the following files:
        - a model class Car in car.rb file.
        - a migration table cars with coloumns name and color
    2.Rails generate controller car 
      It generates the following files:
        - a controller CarsController
        - a folder in the app/view
  Researched answer:
    1.  rails generate controller Greetings hello
      - app/controllers/greetings_controller.rb
      - app/views/greetings/hello.html.erb
      - test/controllers/greetings_controller_test.rb
      - app/helpers/greetings_helper.rb
      - app/assets/stylesheets/greetings.scss
      
    2. rails generate model Person name:string age:integer
      - app/models/person.rb
      - test/unit/person_test.rb
      - test/fixtures/people.yml
      - db/migrate/20200110101912_create_people.rb


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. validates_format_of :email
   :with => /^(+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

2. <%= radio_button :modelname, :attribute, :tag_value, options %>

3. Following will return the average age of all the employees.
Person.average :age

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer:
