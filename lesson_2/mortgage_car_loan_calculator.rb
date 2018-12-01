# Welcome user to loan calculator
# Prompt user for loan amount
# Prompt user for APR
# prompt user for loan duration
# validate each entry matches the required format
# convert APR to monthly interest rate
# convert loan duration to months
# Use formula to calculate the result
# Return the result to the user

require "pry"

def prompt(message)
  puts("=> #{message}")
end

def formula(p, j, n)
  m = p * (j / (1 - (1 + j)**(-n)))
end

loop do
  prompt("Welcome to the loan calculator")
  prompt("Please enter the loan amount: ")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp.to_f

    if loan_amount.nil? || loan_amount < 0
      prompt("Must enter a positive number")
    else
      break
    end
  end

  prompt("Please enter the Annual Percentage Rate(APR): ")

  apr = ''
  loop do
    apr = gets.chomp

    if apr.nil? || apr.to_f < 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  prompt("Please enter the loan duration in years: ")

  loan_duration = ''
  loop do
    loan_duration = gets.chomp

    if loan_duration.nil? || loan_duration.to_i < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  month_duration = loan_duration.to_i * 12
  annual_interest = apr.to_f / 100
  monthly_interest = annual_interest / 12

  monthly_payment = formula(loan_amount, monthly_interest, month_duration)

  prompt("Your monthly payment will be: $#{format('%02.2f', monthly_payment)}")

  prompt("Would you like to do another calculation? (Enter y or n: ")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for calculating your loan with us!")
prompt("Have a great day!")
