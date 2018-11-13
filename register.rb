# Register part

# Declarations
require 'fileutils'
EXTENSION_CONSTANT = ".credentials"

puts "================== Inventory System =================="
puts "===================== Register ======================="
# Step 1: Enter your first name
print "= Enter your first name: "
user_first_name = gets.chomp.to_s

# Step 2: Enter your last name
print "= Enter your last name: "
user_last_name = gets.chomp.to_s

# Step 3: Enter your birth date
print "= Enter your birth date: "
user_birth_date = gets.chomp.to_s

# Step 4: Enter your email address
print "= Enter your E-mail Address: "
user_email_address = gets.chomp.to_s

# Step 5: Ask for desired username
print "= Enter your desired username: " #Prompt for username
username = gets.chomp.to_s

# Step 5.1 Check if user name exists
if Dir.exists?('Records/'+username)
    print "Username already exists"
end

#Step 6: Ask for desired password
print "= Enter your desired password: " #Prompt for password
password = gets.chomp.to_s
puts "\n======================================================"
puts "Please validate user details "
puts "Name: " + user_first_name + user_last_name
puts "Birth date: " + user_birth_date
puts "E-mail Address: " + user_email_address
print "Are these details correct? (Y/N): "
user_choice = gets.chomp.to_s

if user_choice.downcase == "y"
    #Create the directory
    file_handler = File.new('Records/'+ username + "data" + EXTENSION_CONSTANT, "w+")
    file_handler.puts "Name: " + user_first_name + user_last_name
    file_handler.puts "Birth date: " + user_birth_date
    file_handler.puts "E-mail Address: " + user_email_address
    file_handler.close
    file_handler = File.new('Records/'+ username + EXTENSION_CONSTANT, "w+")
    file_handler.puts password
    file_handler.close
    print "User successfully created!"
elsif user_choice.downcase == "n"
    #Action here
    load "register.rb"
else
    print ("Invalid Choice!")
    load "register.rb"
end
