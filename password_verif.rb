#Author: Christabel Escarez
#Last updated: August 8, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  l, "Password Verification"
#sources: https://stackoverflow.com/questions/5235075/how-do-you-put-gets-input-into-an-array


#messages
requirements_msg = "Please re-enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."
#fail messages
not_long = "length is too short."
no_special_characters = "does not contain any special characters"
no_numbers = "does not contain any numbers"
no_different_cases = " does not contain both lowercase and uppercase letters"
#Functions
def invalid_input_message(reason)
  puts "Invalid input. Password #{reason}. #{@requirements_msg}"
end 

#MAIN
puts "#{requirements_msg}"
password = password_length = special_char_found = number_found = different_cases = false
until password
  input_array = password_upcase = password_downcase = Array.new
  input_string = gets.chomp
  input_array = input_string.split('')
  input_array.each do |char|
    puts char
    # if ((char.to_i == 0 && char.to_s == 0) && (0..9).include?(char))
    if char.to_s.to_i == char.to_i
      number_found = true
      password_upcase << char
      password_downcase << char
      puts "number_found == #{number_found}"
    else
      if (char == "@" || char == "%" || char == "*" || char == "!")
        special_char_found = true 
        password_upcase << char
        password_downcase << char
        puts "special char == #{special_char_found}"
      else
        puts "hello"
        password_upcase << char.upcase
        password_downcase << char.downcase
      end
    end
      puts "upcase: #{password_upcase[input_array.index(char)]}"
      puts "downcase: #{password_downcase[input_array.index(char)]}"
  end
  if (input_array.length >= 8)
    password_length = true
  end
  if (password_upcase != input_array && password_downcase != input_array && password_upcase != password_downcase)
    different_cases = true
  end
  puts "input: #{input_array}"
  puts "upcase: #{password_upcase}"
  puts "downcase: #{password_downcase}"

#SO UGLY... but it works. Don't look this code block in the eye!
  if !password_length 
    if !special_char_found 
      if !number_found
        if !different_cases
          invalid_input_message(not_long + no_special_characters + no_numbers + no_different_cases)      
        else
          invalid_input_message(not_long + no_special_characters + no_numbers)      
        end
      else
        if !different_cases
          invalid_input_message(not_long + no_special_characters + no_different_cases)      
        else
          invalid_input_message(not_long + no_special_characters)      
        end
      end
    else
      if !number_found
        if !different_cases
          invalid_input_message(not_long + no_numbers + no_different_cases)      
        else
          invalid_input_message(not_long + no_numbers)      
        end
      else
        if !different_cases
          invalid_input_message(not_long + no_different_cases)      
        else
          invalid_input_message(not_long)      
        end
      end
    end
  else
    if !special_char_found 
      if !number_found
        if !different_cases
          invalid_input_message(no_special_characters + no_numbers + no_different_cases)      
        else
          invalid_input_message(no_special_characters + no_numbers)      
        end
      else
        if !different_cases
          invalid_input_message(no_special_characters + no_different_cases)      
        else
          invalid_input_message(no_special_characters)      
        end
      end
    else
      if !number_found
        if !different_cases
          invalid_input_message(no_numbers + no_different_cases)      
        else
          invalid_input_message(no_numbers)      
        end
      else
        if !different_cases
          invalid_input_message(no_different_cases)      
        else
          password = input_array
        end
      end
    end
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
  

