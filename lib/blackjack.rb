def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  card_total = card_1 + card_2
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    return current_total
  elsif user_input == 'h'
    current_total += deal_card
    return current_total
  else
    invalid_command
    hit?(current_total)
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
  card_total = initial_round
  display_card_total(card_total)
  new_total = hit?(card_total)
  until new__total > 21
    display_card_total(new_total)
    hit?(new_total)
  end
end_game
end
    
