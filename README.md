# Blackjack Advisor
###\*under construction\*

## Synopsis

Blackjack advisor is a command line application written in Ruby. It gives the user a suggested best move in a game of blackjack given the user's first two cards and the dealer's first card.

##Code Example
```ruby
total = first_card + second_card

x = hard_moves[total.to_s.to_sym]
y = x[dealer_card.to_s.to_sym]

optimal_move(y)
```

##Motivation

A short description of the motivation behind the creation and maintenance of the project. This should explain why the project exists.

##Installation

Provide code examples and explanations of how to get the project.

<!-- ##Tests -->
##Contributors

Jenn Tustin

##License
