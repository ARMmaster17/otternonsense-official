# Otter Nonsense Interactive Official Website
=====
For a more readable, paginated version, visit <https://github.com/ARMmaster17/otternonsense-official/wiki>.

## Site overview
The entire website is programmed in Ruby. The web stack is provided by Sinatra. Minify-ing of the HTML templates is done with the Slim gem. The structure of the site is in the modern MVC framework. MVC stands for Model-View-Controller. Model handles database and external data connections. Controllers handle routing and dynamic data logic. And views for the template of the page that should be delivered to the user.

## Integrations
Travis CI: [![Build Status](https://magnum.travis-ci.com/ARMmaster17/otternonsense-official.svg?token=VrDCJ6yNxgW55ph7puWA&branch=master)](https://magnum.travis-ci.com/ARMmaster17/otternonsense-official) 

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## How Continious Integration works
If you would like to make a change, please do so on a seperate branch, then open a pull request when you are done. Any time someone pushes a commit or merges to the **master** branch, Travis CI is triggered. Travis CI is a continious integration service. When a commit is added, Travis will download the latest source and install dependencies, build the project, do unit testing, then deploy to Heroku if everything works out.

## Editing files
Depending on what you want to do, you may need to edit a different file. Remember to do your editing on a seperate branch.

### Backend
This is where logic, dynamic data, and routing configuration happens. Routing and basic logic is handled in **~/main.rb**. If you would like to add a new route, copy this code and edit accordingly:

    get '/path' do
      slim :page
    end

All backend code is done in Ruby. Please note that any files that do not end in .rb or are not located in the root folder will not be deployed to Heroku. Also remember that when you update **Gemfile** to also run the following command to update **Gemfile.lock**:

    bundler install
  
***DO NOT UPDATE Gemfile.lock MANUALLY!!!***

### Frontend
This is where all the design stuff goes. The front end is composed of multiple components. These are all included by default on every page in the file **layout.slim**.

#### JS
##### jquery
Jquery is used for animations and is a dependency of Bootstrap.
##### Bootstrap
Bootstrap is a mobile-first design framework that originally began as a Twitter project. Most design/organizational <div class=""> blocks rely on this framework.
#### CSS
##### Bootstrap
See above.

#### How to modify
To modify a page, find the **.slim** file in the folder **~/views/**. Note that URLs **DO NOT** directly correspond with filenames in the views folder. If you would like to modify the page template, edit **~/views/layout.slim**.

All view pages are written in Slim. Slim is a minified version of HTML. Here are some examples:

    <h1>Hello world!</h1>

Becomes

    h1 Hello world!

If you need parameters,

    <p bg-color="red">Hello world!</p>

Becomes

    p bg-color="red" Hello world!

And note that spacing matters!

    <div>
      <p>Hello world!</p>
    </div>

Becomes

    div
      p Hello world!

## Questions?
Open a new issue with the *question* tag and assign @ARMmaster17.
