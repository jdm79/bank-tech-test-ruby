# Bank Tech Test - Ruby


## Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console
* Deposits, withdrawal
* Account statement (date, amount, balance) printing
* Data can be kept in memory (it doesn't need to be stored to a database or anything)


## Acceptance criteria

* Given a client makes a deposit of 1000 on 10-01-2012
* And a deposit of 2000 on 13-01-2012
* And a withdrawal of 500 on 14-01-2012
* When she prints her bank statement
* Then she would see:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User Stories

```
As a User
So that I can manage my money
I want to open an account

As a User
So that I can use the money in my account
I want to make deposits and withdrawals

As a User
So that I can see what I've been up to with my money
I want to be able to see an account statement
```


## Design and Coding Process

To begin this challenge, I wrote down the key words from the user stories, separating the nouns from the verbs to get an idea of what kind of classes and methods I would need.

For printing the statement, I used a separate class which I used in the Account class using dependency injection, which allows for more loosely coupled code, although the example I have used could be improved upon. As the POODR book by Sandi Metz says, writing good code is about preserving changeability, organising code to allow for every change - and for those changes to have no unexpected side effects. 


## Extension

Try very hard to complete all the tasks in the tech test. If you run out of time, outline how you would have approached the sections you didn't get to.

Describe the extensions you would add if you had more time.


## How to run the program

### First steps:

```
$ git clone git@github.com:jdm79/bank-tech-test-ruby.git
$ cd bank-tech-test-ruby
$ bundle
```

### How to test this program

Whilst in the root directory of this program:
```
# To run the unit tests
$ rspec
# To run code linter
$ rubocop
```

### How to run the actual program in a REPL
* open up IRB on the console 

```
> require './lib/account.rb'
> account = Account.new
> account.deposit_amount(40) (or account.withdraw_amount(30) for example)
```


