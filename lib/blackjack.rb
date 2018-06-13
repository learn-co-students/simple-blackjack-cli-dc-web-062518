 def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
  
end

def initial_round
  require "pry"
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(num)
  # code hit? here
   prompt_user
   com = get_user_input
   if com == 'h'
     new_card = deal_card
     num += new_card
   elsif com == 's'
     num
   else
     invalid_command
   end
    
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  num = initial_round
  until num > 21 do
    new_num = hit?(num)
    display_card_total(new_num)
    num = new_num
  end
end_game(num)
end
    
