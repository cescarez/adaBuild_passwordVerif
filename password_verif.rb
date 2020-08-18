#Author: Christabel Escarez
#Last updated: August 8, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  l, "Password Verification"
#sources: https://stackoverflow.com/questions/5235075/how-do-you-put-gets-input-into-an-array
#future implementation: secondly, add ability for user to exit program

#MAIN
password = false
until password
  puts "Please enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."
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

  if (!all_valid_characters || !password_length || !different_cases || !number_found || !special_char_found)
    puts "  Invalid password."
    if !all_valid_characters
      puts "  - Password contains invalid character(s)."
    end
    if !password_length
      puts "  - Password length is too short."
    end
    if !different_cases
      puts "  - Password does not contain both lowercase and uppercase letters."
    end
    if !number_found
      puts "  - Password does not contain any numbers."
    end
    if !special_char_found
      puts "  - Password does not contain any special characters."
    end
    puts "\n"
  else
    password = input_array.dup
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