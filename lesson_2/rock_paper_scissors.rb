VALID_CHOICES = { r: 'rock', p: 'paper', s: 'scissors', l: 'lizard',
                  sp: 'spock' }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'rock'  && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")

  end
end

def display_choices
  VALID_CHOICES.map do |key, val|
    puts "#{key.to_s.ljust(2)} - #{val}"
  end
end

counter = 1
def game_counter
  counter + 1
end

loop do
  choice = ''
  loop do
    prompt("Choose one: ")
    display_choices
    choice = gets.chomp.downcase.to_sym

    if VALID_CHOICES.key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  player_choice = VALID_CHOICES[choice]
  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose: #{player_choice}; Computer chose: #{computer_choice}")

  display_result(player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
