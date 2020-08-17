#Author: Christabel Escarez
#Last updated: August 8, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  l, "Password Verification"
#sources: https://stackoverflow.com/questions/5235075/how-do-you-put-gets-input-into-an-array

#Functions
def invalid_input_message(reason)
  puts "Invalid input. Password #{reason}. Please re-enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."
end 
#fail messages
not_long = "length is too short."
no_special_characters = "does not contain any special characters"
no_numbers = "does not contain any numbers"
no_different_cases = " does not contain both lowercase and uppercase letters"

#MAIN
puts "Please enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."

password_length = special_char_found = number_found = different_cases = false
user_input = password_upcase = password_downcase = Array.new
until password_length == true && special_char_found == true && number_found == true && different_cases == true
  user_input << gets.chomp
  user_input.each do |char|
    password_upcase[user_input.index(char)] = char.uppercase
    password_downcase[user_input.index(char)] = char.lowercase
    if (char == "@" || char == "%" || char == "*" || char == "!")
      special_char_found = true 
    elsif ((0..9).contains(char))
      number_found = true
    end
  end
  if (user_input.length >= 8)
    password_length = true
  end
  if (password_upcase != user_input && password_downcase != user_input)
    different_cases = true
  end
  if !password_length && !special_char_found && !number_found && !different_cases
    invalid_input_message("Password length too short, does not contain any special characters, does not contain any numbers, and does not contain both lowercase and uppercase letters.")      
  end
  if !special_char_found
    invalid_input_message("Password does not contain any special characters.")      
  end
  if !number_found
    invalid_input_message("Password does not contain any numbers.")      
  end
  if !different_cases
    invalid_input_message("Password does not contain both lowercase and uppercase letters.")      
  end
end

puts "Your password has been accepted. Goodbye."

# while (password1 >= 0 && password2 >= 0) 
#   password2 = password1 + 1 #offset password1 and password2 to enter below loop
#   until password1 == password2
#     puts "Please enter a number. Enter a negative number to quit."
#     password1 = check_input(gets.chomp)
#     puts "Please enter the number again to confirm entry."
#     password2 = check_input(gets.chomp) 
#     if password1 != password2
#       puts "#{password1} does not match #{password2}, please try again."
#     end
#   end
#     total += password1
#     puts "the current total is #{total}"
# end

# puts "Result: #{total}"
  

