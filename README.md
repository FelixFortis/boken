Boken - goal tracking
============================================

This is an app I'm building to showcase what I can do in Rails while I'm searching for employment, and to practice building apps from start to finish. And most importantly, because it's fricking fun!

This app will (when finished) demonstrate:
--------------------------------------

**Back end:**
* Version control (obviously!)
* Understanding the MVC architecture (clever models, dumb controllers and skinny views) and DRY coding
* A test-first and BDD approach to programming in Rails using Cucumber, RSpec and friends
* RESTful routing/nested routing
* Migrations and database manipulation/associations using ActiveRecord and PostgreSQL
* Researching and implementing various gems to increase efficiency to avoid re-inventing the wheel (e.g. better_errors and devise)
* App deployment using Heroku

**Front end:**
* The asset pipeline
* HTML5, Javascript, CSS3
* Preprocessors such as erb, Haml, Coffeescript and Sass
* Style gems such as bootstrap, will_paginate and simple_form
* Client-side JS frameworking with AngularJS
* Rails helpers such as layouts, partials, form helpers and link helpers

**Boken** is a goal tracking app. My vision of it would be more of a personal development goal tracking app, but it could just as easily be used for people's bucket list.

The gist of the app is that you can login and that each user has a goals list.

You can create goals and add them to your list. (currently working on this scenario (as of 24Oct13))

Other users can look at all goals that have ever been created, or the goals of their friends, and add them to their own list at the click of a button.

Once a goal is on someone's list, they are able to add additional information such as timeframes and goal steps so that they can personalise their goals without tainting the global goals.

Goals can be created or deleted by users, but will always remain on the global list for others to check out and add to their list if they wish.

Admins can permanently delete goals from the global list (e.g. if they are duplicates/don't make any sense etc) to keep things tidy.
