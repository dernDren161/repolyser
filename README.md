
**Repolyser** is a web application which helps newbies get started with open source.

### How it works?
* Users can login into their respective accounts and add in their desired repositories along with their respective label as **"Beginner","Intermediate" or "Advanced"** with the programming language in which it's written.
* The users part the repositories w.r.t their experience with the particular repository.
* A description field describing their experience with the repo and other suggestions would also be added. *[Commit Pending/TODO]*
* This way users help create a curated list for the viewers.
* Others can view the details once they are logged in and can also delete the repository if desired.
* New programmers can see the repository details and can easily make up their decision to choose a repository for contribution on the basis of the previously provided rating.
* Once logged in the viewers can also see the author of the thread and contact them through their email if required.

## Run it on your local machine

* New gems used 
  - > gem 'bootstrap', '~> 4.1.1'
  - > gem 'devise'
  - > gem 'jquery-rails'
  
* Run `bundle install`
* Database:
  - Database Used `MYSQL`
  - Credentials for `repolyser_development`:
    - Username : `repo`
    - Password : `repo`
* `cd` into the repository and run `rails server` and watch the web app run on `localhost:3000`




# Footnote: 
If you want to make any desirable changes in the codebase, then please don't shy out to push a commit for the change.
