##Preview

Screenshots: http://praveenperera.com#projects

## Synopsis

Platform for to launch video courses from. Technologies involved in this project:

* Authentication using devise
* Authentication using Facebook, Twitter and GitHub API using OmniAuth and devise
* Front end design using Materialze CSS
* Accepting payments using Stripe
* Notification and transactional emails using Mandril
* Active Admin implementation

## Contributors

Currently I am the only contributor to the project, additional contributors are welcome. 

1. Fork it ( https://github.com/[my-github-username]/videolearning/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

Please also use Github issue tracker to show what you plan doing and provide tests and documentations whenever possible

## Installation

This repo is the full rails app for videolearning you can choose to fork and edit it and use it however you wish. Currently uses postgresql as default database, this can be changes.

Download the repo, navigate to the folder via terminal and run bundle install to get the necessary gems, create the db and run migrations. Finally run start the server.

 ```shell
 bundle install
 rake db:create
 rake db:migrate
 rails s
 ```

## License

Videolearning is under MIT license - http://www.opensource.org/licenses/mit-license.php


