def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # generate random number between 1...11 (inclusive)
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  return card1 + card2
end

def hit? (card_total)
  prompt_user
  answer = get_user_input
  if answer == "s"
    return card_total
  elsif answer == "h"
    card_total += deal_card
    return card_total
  else
    invalid_command("Please enter a valid command")
    prompt_user
  end
end

def invalid_command(error_message)
  puts error_message
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
