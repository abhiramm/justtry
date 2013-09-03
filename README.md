Application instructions
========================

Please update the *README* as and when there are significant changes to the code that should be replicated by the other developers.
For example, if you changed the default database or when you added new rake task, etc.

## Workflow

#### Version control

This project would use *git* for version control. Please make sure the following.

- [Write good commit messages with proper one line or possible description about commit message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
- NOTE: *Do NOT use git push -f*

Please use [git flow](https://github.com/nvie/gitflow), whenever you start to create a feature, make that in a feature branch. Once you complete your feature branch merge into the develop branch and push. Do not merge into master directly


Some resources related to git flow:

-   [Successful git flow](http://nvie.com/posts/a-successful-git-branching-model/)
-   [Why arent you using git flow](http://jeffkreeftmeijer.com/2010/why-arent-you-using-git-flow/)

#### Testing
The current testing framework used is `rspec` along with `capybara`, `factory_girl`, if you are including your testing framework please make a mention. Try to do TDD or BDD.

#### Development - Ruby

##### Code should be readable

- Make sure you don't litter models or controllers with too many methods. Use `concerns` to extract common logic.
- Make sure you don't litter view with too sphagetti code. Use `partials`, `helpers` to extract.
- Use OOP as and when needed, do not use primitve data types like hash or list unnecessarily.
    - eg: Student = { name: "Rahul", age: 22} *X*
    - Use class Student end;

## Dev stack

- Ruby on Rails 4
- Ruby - 2.0.0

#### database

- sqlite3 (database)
- postgres (production)

#### session server

In future *Redis* will be used for session storage so it is recommended you install `sudo apt-get install redis-server`

## Server

Live site : [c4u](http://c4u.7zero.com)

##### To login to server:

The password is "custom"

- ssh ubuntu@192.241.252.5
- It is advised to use `ssh-copy-id ubuntu@192.241.252.5` so that you could ssh without entering password after one time
- The app is in apps/custom/current, do not run task unless you are sure.
