# Squirrel Rails v1
by [Alphacamp](http://sg.alphacamp.co)

### Squirrel ERD

- [View ERD](https://s3-ap-northeast-1.amazonaws.com/assets.alphacamp.co/attachments/uploads/000/000/147/original/squirrel_v3.jpg?1510576435)


### Getting Started
Clone the project and bundle
```
git clone https://github.com/gohdaniel15/squirrel_rails_v1.git
cd squirrel_rails_v1
bundle
```
### Configurations
Setup database configuration
```
cp config/database.yml.sample config/database.yml
```
Create database
```
rake db:create db:migrate db:seed
```

Setup credentials
```
cp .env.sample .env
```

### Development Seed Data
Run the command to seed development data
```
# local machine
rake db:migrate:reset db:seed dev:prime
```
When making changes in the model, make sure that the corresponding factory and `dev.rake` are also updated so that development seed is always consistent provides data that can help with front-end testing.

### Branch Policy

Local development branch naming:

* `feature/<branch_name>` for substantial new feature or function
* `enhance/<branch_name>` for minor feature or function enhancement
* `bugfix/<branch_name>` for bug fixes


### Fixing conflicts thru rebasing

- [Rebasing from master](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase)


### Reminders
We're using Mailcatcher to access incoming emails in development
```
mailcatcher
http://localhost:1080
```

### Raising a bug, issue, or suggestions?
Create an issue at [squirrel_rails_v1 github issues](https://github.com/gohdaniel15/squirrel_rails_v1/issues)

### Questions?
If you have any questions, feel free to ask the developers
1. Daniel Goh: daniel.goh@alphacamp.tw
2. Tim Du: tim.du@alphacamp.tw

