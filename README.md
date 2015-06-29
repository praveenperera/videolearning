<<<<<<< HEAD
## Synopsis

Platform for Queen's University students to share rides between home and kingston, or anywhere in between. This project is currently in currently in a very early alpha stage. 

Currently the project is very simple users are able to sign up and post a ride with information such as when and where they are leaving from and going to. Once posted other users can request a seat. If the driver accepts the person as a passenger they will be added to the ride and the posted ride will show one less available spot. 

This project also lets users communicate with each other with a email type messaging system. This system was built off of the [mailboxer gem](https://github.com/mailboxer/mailboxer). Additional methods were added into the messaging and conversation controllers for added functionality. Currently users can send messages to each other from link in the requests page or if they know the users's username (the email that they signed up with).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            


In the final version sign ups will be restricted to emails with the queensu.ca domain. There are plans to expand this platform to other universities as well. 

## Contributors

Currently I am the only contributor to the project, addtional contributers are welcome. 

1. Fork it ( https://github.com/[my-github-username]/videolearning/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

Please also use Github issue tracker to show what you plano doing and provide tests and documentations whenever possible





## How to Contribute

As stated before this is a very early proof of concept version, many additions and changes need to be made. Including:

* Validations need to added and updated
* Documentation improvments 
* Tests need to be added
* Code refactoring and clean ups need to be made
* Should fork mailboxer gem and move the additional methods into the gem
* About and terms and conditions pages need to be added
* Unread notifications need to be added to messages and ride requests
* Email notifications need to be set up via mandril


###Additional Features

In the future I am planning on addting the following features:

* Real time chat intergrated with current messaging system
* Expand platform the accept sign ups from other universities
* Add payment system to users can pay for rides upfront, or use Uber style payment where the payment is sent once they arrive at a set location (home or school)
* Driver and passenger review system needs to be added so users can rate each other. 
	* Rides from higher rated users will be displayed first or highlighted
	* User reporting and banning system should also be added
 
## Motivation

The motivation for this project comes from solving a problem I have personally had. I graduated from Queen's University last year. Queen's university is 3 hours away from Toronto. Many students home town is either Toronto or another city in the Toronto area.

So far these students have been using a rideshare group on facebook to organize rides. This platform was created to solve some of the problems involved with using facebook to organize rideshares including:

* Many students no longer use facebook
* Unsure if the ride is still available or full
* No good way to keep passengers and drivers accountable (solved with review system)
* No good way to search for rides


## Installation

This repo is the full rails app for qrideshare you can choose to fork and edit it and use it however you wish. Currently uses postgresql as default database, this can be changes.

Download the repo, navigate to folde via terminal and run bundle install to get the nessecary gems and run rails s to start the server.

 ```shell
 bundle install
 rails s
 ```
 
 

## License

qrideshare is under MIT license - http://www.opensource.org/licenses/mit-license.php

=======
# videolearning
Platform to launch free and paid video courses
>>>>>>> c3d61cc6b5bb088e32c1054ff9c349b8229a2142
