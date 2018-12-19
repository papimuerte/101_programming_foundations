VALID_CHOICES = {"r" => "rock", "p" => "paper", "s" => "scissors", "l" => "lizard", "sp" => "spock"}

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

loop do
  choice = ''
  values = []
  options = []
  loop do
    values = VALID_CHOICES.values
    options = VALID_CHOICES.keys
    test_zip = options.zip(values)
    prompt("Choose one: #{options.join('= ')}#{values.join(', ')}")
    choice = Kernel.gets().chomp()

    if options.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  player_choice = VALID_CHOICES[choice]
  computer_choice = values.sample

  prompt("You chose: #{player_choice}; Computer chose: #{computer_choice}")

  display_result(player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end