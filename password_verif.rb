#Author: Christabel Escarez
#Last updated: August 8, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  l, "Password Verification"
#sources: https://stackoverflow.com/questions/5235075/how-do-you-put-gets-input-into-an-array
#future implementation: absolutely dreadful code for echoing which password requirements are not being met, definitely fix that; secondly, add ability for user to exit program


#Variables
requirements_msg = "Please re-enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."
#fail messages
not_long = "length is too short"
no_special_characters = "does not contain any special characters"
no_numbers = "does not contain any numbers"
no_different_cases = "does not contain both lowercase and uppercase letters"
invalid_characters = "contains invalid character(s)"

#Functions
def invalid_input_message(reason)
  puts "Invalid input. Password #{reason}. #{@requirements_msg}"
end 

#MAIN
puts "#{requirements_msg}"
password = false
until password
  password_length = special_char_found = number_found = different_cases = false
  all_valid_characters = true
  uppercase = lowercase = false

  input_array = Array.new
  input_string = gets.chomp
  input_array = input_string.split('')

  input_array.each do |char|
    if char.to_s == char.to_i.to_s
      number_found = true
    else
      if (char == "@" || char == "%" || char == "*" || char == "!")
        special_char_found = true 
      else
        if (('A'..'Z').include?(char))
          uppercase = true
        elsif (('a'..'z').include?(char))
          lowercase = true
        else
          all_valid_characters = false
        end
      end
    end
  end

  if (input_array.length >= 8)
    password_length = true
  end

  if (uppercase && lowercase)
    different_cases = true
  end

#SO UGLY... but it works. Don't look this code block in the eye! Beware! It is a wild beast and does not like being touched...
  if !all_valid_characters
    if !password_length 
      if !special_char_found 
        if !number_found
          if !different_cases
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_numbers + ", " + no_different_cases + ", " + invalid_characters)
          else
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_numbers + ", " + invalid_characters)      
          end
        else
          if !different_cases
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_different_cases + ", " + invalid_characters)      
          else
            invalid_input_message(not_long + ", " + no_special_characters + ", " + invalid_characters)      
          end
        end
      else
        if !number_found
          if !different_cases
            invalid_input_message(not_long + ", " + no_numbers + ", " + no_different_cases + ", " + invalid_characters)      
          else
            invalid_input_message(not_long + ", " + no_numbers + ", " + invalid_characters)      
          end
        else
          if !different_cases
            invalid_input_message(not_long + ", " + no_different_cases + ", " + invalid_characters)      
          else
            invalid_input_message(not_long + ", " + invalid_characters)      
          end
        end
      end
    # else
    #   if !special_char_found 
    #     if !number_found
    #       if !different_cases
    #         invalid_input_message(no_special_characters + ", " + no_numbers + ", " + no_different_cases + ", " + invalid_characters)      
    #       else
    #         invalid_input_message(no_special_characters + ", " + no_numbers + ", " + invalid_characters)      
    #       end
    #     else
    #       if !different_cases
    #         invalid_input_message(no_special_characters + ", " + no_different_cases + ", " + invalid_characters)   
    #       else
    #         invalid_input_message(no_special_characters + ", " + invalid_characters)      
    #       end
    #     end
    #   else
    #     if !number_found
    #       if !different_cases
    #         invalid_input_message(no_numbers + ", " + no_different_cases + ", " + invalid_characters)      
    #       else
    #         invalid_input_message(no_numbers + ", " + invalid_characters)      
    #       end
    #     else
    #       if !different_cases
    #         invalid_input_message(no_different_cases + ", " + invalid_characters)      
    #       else
    #         invalid_input_message(invalid_characters)      
    #       end
    #     end
    #   end
    # end
    else
      if !special_char_found 
        if !number_found
          if !different_cases
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_numbers + ", " + no_different_cases)      
          else
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_numbers)      
          end
        else
          if !different_cases
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_different_cases)      
          else
            invalid_input_message(not_long + ", " + no_special_characters)      
          end
        end
      else
        if !number_found
          if !different_cases
            invalid_input_message(not_long + ", " + no_numbers + ", " + no_different_cases)      
          else
            invalid_input_message(not_long + ", " + no_numbers)      
          end
        else
          if !different_cases
            invalid_input_message(not_long + ", " + no_different_cases)      
          else
            invalid_input_message(not_long)      
          end
        end
      end
    end
    if !password_length 
      if !special_char_found 
        if !number_found
          if !different_cases
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_numbers + ", " + no_different_cases + ", " + invalid_characters)
          else
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_numbers + ", " + invalid_characters)      
          end
        else
          if !different_cases
            invalid_input_message(not_long + ", " + no_special_characters + ", " + no_different_cases + ", " + invalid_characters)      
          else
            invalid_input_message(not_long + ", " + no_special_characters + ", " + invalid_characters)      
          end
        end
      else
        if !number_found
          if !different_cases
            invalid_input_message(not_long + ", " + no_numbers + ", " + no_different_cases + ", " + invalid_characters)      
          else
            invalid_input_message(not_long + ", " + no_numbers + ", " + invalid_characters)      
          end
        else
          if !different_cases
            invalid_input_message(not_long + ", " + no_different_cases + ", " + invalid_characters)      
          else
            invalid_input_message(not_long + ", " + invalid_characters)      
          end
        end
      end
    else
      if !special_char_found 
        if !number_found
          if !different_cases
            invalid_input_message(no_special_characters + ", " + no_numbers + ", " + no_different_cases)      
          else
            invalid_input_message(no_special_characters + ", " + no_numbers)      
          end
        else
          if !different_cases
            invalid_input_message(no_special_characters + ", " + no_different_cases)      
          else
            invalid_input_message(no_special_characters)      
          end
        end
      else
        if !number_found
          if !different_cases
            invalid_input_message(no_numbers + ", " + no_different_cases)      
          else
            invalid_input_message(no_numbers)      
          end
        else
          if !different_cases
            invalid_input_message(no_different_cases)      
          else
            password = input_array
            puts password
          end
        end
      end
    end
  end
end

confirmation_array = Array.new
until password == confirmation_array
  #for future implentation: exit flag for whole program, not just during password confirmation
  puts "Please reenter your password for confirmation. If you would like to exit, please enter 'q'."
  confirmation_string = gets.chomp
  if confirmation_string.downcase == 'q'
    exit
  end
  confirmation_array = confirmation_string.split('')
  if password != confirmation_array
    puts "Passwords do not match. Please try again."
  end
end

puts "Your password has been accepted. Goodbye."