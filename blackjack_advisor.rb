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

loop do

puts "Enter your first card: "
first_card = gets.chomp.to_i

puts "Enter your second card: "
second_card = gets.chomp.to_i

puts "Enter the dealer's card"
dealer_card = gets.chomp

total = first_card + second_card

x = hard_moves[total.to_s.to_sym]
y = x[dealer_card.to_sym]


if y == "H"
  puts "You should hit!"

elsif y == "S"
  puts "You should stand!"

elsif y == "P"
  puts "You should split!"

elsif y == "Dh"
  puts "You should double if possible, otherwise Hit."

elsif y == "Ds"
  puts "You should double if possible, otherwise Stand."

else
  puts "Wrong input"
  break
end
end


#if gets.chomp.to_s == ""

#end

#puts "total: #{total}"
#puts "dealer card: #{dealer_card}"
#puts "x: #{x}"
#puts "y: #{y}"
