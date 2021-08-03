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
14/01/2012 ||        || 500.00 || 2500.00
13/01/2012 || 2000.00 ||       || 3000.00
10/01/2012 || 1000.00 ||       || 1000.00
``` 

## Self-assessment
Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit

# My process

What it should do:
- deposit, withdraw
- have date, amount in/out of account, balance

Dependancies:
Account should be the base class so that the data is caught when the user inputs deposit/ withdraw info. 
Therefor, Bank replies on Account. 

User stories:
```

As a user, 
I want to be able to open an account from a Bank.

As a user, 
To keep my money safe,
I want to deposit my money in my account.

As a user, 
I want to be able to withdraw money from my account.


```
