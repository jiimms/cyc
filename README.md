
# About

[CyC](cyc-app.herokuapp.com) is a free and open database and web application for enabling those in need(recepients) publish their stories and reach out to those who would like to help out(donors). One might think of it as the ground for getting to know people's stories and helping them if in a position to.

The main content are Recepient-Donor relations: The recepient provides,their names, information, life story in structured documents that include all of the necessary information for a donor to reach out. i.e.: Think about war heroes/veterans, widows, terminally ill(cancers, paralysm), Natural disaster survivers(earthquakes, floods, tsunami's, etc) , etc. In this Freebase platform, recepients can find donors to either advice, make a donation, help by giving a resource(like a job) or simply comfort them like &ldquo; Share their stories too&rdquo; 

# Project Title

CyC


### Prerequisites

You will need to install [Ruby](http://www.ruby-lang.org/en/), [Rails](http://rubyonrails.org/) before you can get a CyC server up and running on your local machine. Once you have these prerequisites to get started with a local copy of the project, run:


### Getting Started (The Easy Way)

```bash
1. Open your terminal.
2. `$ git clone https://github.com/jiimms/cyc` - stores the repository in your machine using git.
3. `$ cd cyc` - change to the cyc directory
4. `$ bundle install`
5. `$ rake db:setup`
6. `$ rails s`
```

Then, visit [http://127.0.0.1:3000/](http://127.0.0.1:3000/) in your browser to see the CyC web application running on your local machine. If all went well, you will have a seeded database and can use the account `bob@gmail.com` with password `secret` for the admin account, `bobdonor@gmail.com` with password `secret` (for the donor account) and `bobrecepient@gmail.com` with password `secret` for the recepient account.


## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Ruby](http://www.ruby-lang.org/en/) - The programming language used
* [Rails](http://rubyonrails.org/) - The web framework used
* [Sqlite](https://www.sqlite.org/) - Secondary database
* [Postgres](https://www.postgresql.org/) - Primary database

## Contributing

Please read `contribution.md(currently being edited)` for details on our code of conduct, and the process for submitting pull requests to us.


## Authors

***Jimmy Mannan** - *Initial work* - [Jimmy](https://github.com/jimms)
***Roselyne** - *Initial work* - [Roselyne](https://github.com/jimms)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
