#Author: Christabel Escarez
#Last updated: August 8, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  l, "Password Verification"

#Functions
def invalid_input_message(reason)
  puts "Invalid input. #{reason} Please re-enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."
end 

def check_input(user_input)
  while !password
    user_input[] = gets.chomp
    if (user_input[].length < 8)
      invalid_input_message("Password length too short.")      
    elsif (user_input == user_input.map(&:upcase) || user_input[] == user_input[].lowercase)
      invalid_input_message("Password does not contain both uppercase and lowercase letters.")      
    elsif
      #
    end
  end
  return user_input
end
  
#MAIN
puts "Please enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."
total, number1, number2 = [0] * 3

while (number1 >= 0 && number2 >= 0) 
  number2 = number1 + 1 #offset number1 and number2 to enter below loop
  until number1 == number2
    puts "Please enter a number. Enter a negative number to quit."
    number1 = check_input(gets.chomp)
    puts "Please enter the number again to confirm entry."
    number2 = check_input(gets.chomp) 
    if number1 != number2
      puts "#{number1} does not match #{number2}, please try again."
    end
  end
    total += number1
    puts "the current total is #{total}"
end

puts "Result: #{total}"
  

