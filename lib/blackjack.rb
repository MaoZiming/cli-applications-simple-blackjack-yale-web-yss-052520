def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  display_card_total(num1+num2)
  num1+num2
end

def hit?(number)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "s"
    return number
  elsif input == 'h' then
    number += deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
  number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  num = initial_round
  until num > 21 do
    num = hit?(num)
    puts "Your cards add up to #{num}"
  end
  puts "Sorry, you hit #{num}. Thanks for playing!"
end
