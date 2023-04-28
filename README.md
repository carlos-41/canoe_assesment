# README
This project provide a full CRUD operations to manage companies, fund managers and funds with a simple UI design and duplicate fund warnings.

## Technical details
* Ruby 3.2.1
* Rails 7.0.4.3
* Git

## Development environment
* Macbook Pro 2021 M1 16GB MacOS Ventura 13.1
* Iterm2 

## Installation
1) Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed and clone the repository with the next command
```bash
git clone https://github.com/carlos-41/canoe_assesment
```
2) You need to have Ruby installed in your machine, in order to achieve this we installed [RVM](https://rvm.io/rvm/install) that allows us to install Ruby 3.2.1 using the next commands. 
```bash
cd canoe_tech_assesment
\curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 3.2.1
rvm use 3.2.1
ruby -v
```
Output should be similar to
```bash
ruby 3.2.1 (2023-02-08 revision 31819e82c8) [arm64-darwin22]
```

Note: for detailed installation steps please see RVM documentation in the link above

3) Once you have ruby installed we need to install the required gems with
```bash
gem install rails
gem install bundler
bundle install
```

4) Run the rails db create and migrations to setup the development environment
```bash
rails db:create RAILS_ENV=development
rails db:migrate RAILS_ENV=development
```

5) Run the rails server
```bash
rails server
```

6) Access to the UI [clicking here](http://localhost:3000/) or type localhost:3000 in your browser

7) Play around the UI to verify the CRUD operations on all the entities, check fields validations and confirm duplicate fund warnings(creating funds with same fund manager + fund name/alias)

## Next steps or improvements

* Add a better UI experience filtering by different fund attributes(did not have enough time)
* Add workers to perform validation tasks(duplicate funds) in the background for a better performance
* Implement a robust way to resolve duplicate fund warnings(right now is only displaying the warning, could include update or delete operation for duplicated funds in future release)
* Improve tests (integration, E2E, etc.)
* Improve UI look and feel
