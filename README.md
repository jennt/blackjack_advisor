# Blackjack Advisor

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

This program was a class assignment. It currently only predicts the best moves for "hard" hands. Given more time I would like to include the statistics for "soft", and "pair" hands as well.

##Installation
Before running this program on your machine you will need to download ruby.

<!-- ##Tests -->
##Contributors

Jenn Tustin

##License
