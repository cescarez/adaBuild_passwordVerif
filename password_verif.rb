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
    user_input = gets.chomp
    if (user_input.length < 8)
      invalid_input_message("Password length too short.")      
    elsif ((user_input == user_input.map(&:upcase) || user_input == user_input.map(&:lowercase)))
      invalid_input_message("Password does not contain both uppercase and lowercase letters.")      
    elsif
      user_input.each do |char|
        until (char == @ || char == % || char == * || char == !)
          
        end
        password_upcase[user_input.index(char)] = char.uppercase
        password_downcase[user_input.index(char)] = char.lowercase
      end
    end
  end
  return user_input
end
  
# #MAIN
# puts "Please enter a password that is at least 8 characters long and contains at least: one uppercase letter, one lowercase letter, one number, and one special character (@, %, *, or !)."

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
  

