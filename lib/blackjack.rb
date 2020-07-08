def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
  card_total = 0
  card_total
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total > 21
    puts "Sorry, you hit #{card_total.to_s}. Thanks for playing!"
  end
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  #puts card1
  #puts card2
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_in = get_user_input
  if user_in == "h"
    new_card = deal_card
    card_total = card_total + new_card
    display_card_total(card_total)
    return card_total
  elsif user_in == "s"
    return card_total
  else
    invalid_command
    prompt_user
    user_in = get_user_input
  end
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
  card_total = initial_round
  while card_total < 21 do
    card_total = hit?(card_total)
  end
  end_game(card_total)
end

#runner
