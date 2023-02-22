# BankHome

BankHome is a technical test that evaluates the knowledge of the person. Following the instructions; I have to create an application on Ruby on Rails.

## Installation
### Clone the repository

```shell
git clone git@github.com:Brunosz19/BankHome.git
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 3.1.2
```
### Start PostgreSQL
Using the terminal, you have to open services of Postgresql. In my case, I start my Postgresql databases with the next command.
 
```bash
sudo service postgresql
```
### Set and initialize the database
After that, you have to create the databases with the next command. Note: 

```bash
rails db:create
```

If you have already created the database with the same name, you can drop it using the `rails db:drop` command.

Then, you have to create the model table and migrations.

```bash
rails db:migrate
```

Later, in this application, we have dummy data, so you can poblate the app with the next command.

```bash
rails db:seed
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler).

```shell
bundle install
```

### Start the server
Finnaly, to start the server write the following command.

```bash
rails s
```

This is an example of what you will have in your terminal.

![terminal](https://user-images.githubusercontent.com/103700965/220712373-e2796702-7a6c-483e-9724-2d0082425712.png)

And to go to the page, paste the next url `http://127.0.0.1:3000` in the browser.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Author
[Bruno Saenz](https://github.com/Brunosz19)
