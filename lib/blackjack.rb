require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(x)
  prompt_user
  input = get_user_input
  if input == 'h'
    x += deal_card
  elsif input == 's'
    x
  else
    invalid_command
    hit
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  y = hit?(x)
  display_card_total(y)
  until y > 21
    y = hit?(y)
  end
end_game(y)
end
