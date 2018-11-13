# Simple inventory system using file handling
puts "================== Inventory System =================="
puts "= 1.) Login                  ========================="
puts "= 2.) Register               ========================="
puts "= 3.) View Inventory         ========================="
puts "= 4.) Exit                   ========================="
puts "======================================================"
# Prompt for input of choices
print "Enter your choice: " 
action_choice = gets.to_i

if action_choice == 1 #Login
    load "login.rb"
elsif action_choice == 2 #Register
    load "register.rb"
elsif action_choice == 3 #View
    # Action
elsif action_choice == 4 #Exit
    # Action
end
