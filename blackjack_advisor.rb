require 'pry'
hard_moves = {
  "5": {
    "2": "H",
    "3": "H",
    "4": "H",
    "5": "H",
    "6": "H",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "6": {
    "2": "H",
    "3": "H",
    "4": "H",
    "5": "H",
    "6": "H",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "7": {
    "2": "H",
    "3": "H",
    "4": "H",
    "5": "H",
    "6": "H",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "8": {
    "2": "H",
    "3": "H",
    "4": "H",
    "5": "Dh",
    "6": "Dh",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "9": {
    "2": "Dh",
    "3": "Dh",
    "4": "Dh",
    "5": "Dh",
    "6": "Dh",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "10": {
    "2": "Dh",
    "3": "Dh",
    "4": "Dh",
    "5": "Dh",
    "6": "Dh",
    "7": "Dh",
    "8": "Dh",
    "9": "Dh",
    "10": "H",
    "A": "H"
  },
  "11": {
    "2": "Dh",
    "3": "Dh",
    "4": "Dh",
    "5": "Dh",
    "6": "Dh",
    "7": "Dh",
    "8": "Dh",
    "9": "Dh",
    "10": "Dh",
    "A": "Dh"
  },
  "12": {
    "2": "H",
    "3": "H",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "13": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "14": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "15": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "16": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "H",
    "8": "H",
    "9": "H",
    "10": "H",
    "A": "H"
  },
  "17": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "S",
    "8": "S",
    "9": "S",
    "10": "S",
    "A": "S"
  },
  "18": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "S",
    "8": "S",
    "9": "S",
    "10": "S",
    "A": "S"
  },
  "19": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "S",
    "8": "S",
    "9": "S",
    "10": "S",
    "A": "S"
  },
  "20": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "S",
    "8": "S",
    "9": "S",
    "10": "S",
    "A": "S"
  },
  "21": {
    "2": "S",
    "3": "S",
    "4": "S",
    "5": "S",
    "6": "S",
    "7": "S",
    "8": "S",
    "9": "S",
    "10": "S",
    "A": "S"
  }

}

card_values = {
  "A"=> 11,
  "J"=> 10,
  "K"=> 10,
  "Q"=> 10,
  "10"=> 10,
  "9"=> 9,
  "8"=> 8,
  "7"=> 7,
  "6"=> 6,
  "5"=> 5,
  "4"=> 4,
  "3"=> 3,
  "2"=> 2,
}

def optimal_move(move)
  case move
  when "H"
    puts "You should hit!"
  when"S"
    puts "You should stand!"
  when "P"
    puts "You should split!"
  when "Dh"
    puts "You should double if possible, otherwise Hit."
  else "Ds"
    puts "You should double if possible, otherwise Stand."
  end
end

def check_input(input, card_values)
  until input == "A" || input == "K" || input == "Q" || input == "J" || (1..11).to_a.include?(input.to_i)
    puts "Wrong input type"
    input = card_values[gets.chomp]
  end
  return input
end

loop do

puts "To use this blackjack advisor enter A for aces, K for kings, Q for
queen, J for jacks and face value for 2-10"

puts "Enter your first card: "
first_card = card_values[gets.chomp]
first_card = check_input(first_card, card_values)

puts "Enter your second card: "
second_card = card_values[gets.chomp]
second_card = check_input(second_card, card_values)

puts "Enter the dealer's card"
dealer_card = card_values[gets.chomp]
dealer_card = check_input(dealer_card, card_values)


total = first_card + second_card

x = hard_moves[total.to_s.to_sym]
move = x[dealer_card.to_s.to_sym]

optimal_move(move)

end
