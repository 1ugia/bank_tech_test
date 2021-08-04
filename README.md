Bank tech test
----
Practicing a tech test at Makers, week 10.

### Instructions: 

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification
---- 

### Requirements
- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date       || credit || debit  || balance

``` 

## Self-assessment
Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit

# My process

What it should do:
- deposit, withdraw
- print out: have date, amount in/out of account, balance

Dependancies:
- Account catches the transaction data when the user deposits / withdraws. 
- Bank should allow you to print your stransaction made. 

Steps:
- Follow the User Stories. 
- Next, divide the classes and tests

User stories:
```

As a user, 
I want to be able to open an account from a Bank.

As a user, 
To keep my money safe,
I want to deposit my money in my account.

As a user, 
I want to be able to withdraw money from my account.

As a user, 
i'd like to be able to get a statement of my account to have a track of my transactions.


```

## how to install:
`git clone` the repo to your terminal 
- `https://github.com/1ugia/bank_tech_test.git`
Run `bundle install`
To run tests, `rspec`.
To check coverage, run `rubocop`

## How to run the program:
```
➜  bank_tech_test git:(main) ✗ irb
2.7.2 :001 > require './lib/account.rb'
 => true 
2.7.2 :002 > a = Account.new
 => #<Account:0x00007ff7f3171bf8 @balance=0, @transactions=[]> 
2.7.2 :003 > a.deposit(100)
 => [["2021-08-04||     ||100||100"]] 
2.7.2 :004 > a.deposit(300)
 => [["2021-08-04||     ||100||100"], ["2021-08-04||     ||300||400"]] 
2.7.2 :005 > a.withdraw(50)
 => [["2021-08-04||     ||100||100"], ["2021-08-04||     ||300||400"], ["2021-08-04||50||     ||350"]] 
2.7.2 :006 > a.statement
2021-08-04||     ||100||100
2021-08-04||     ||300||400
2021-08-04||50||     ||350

 => nil 
 ```
