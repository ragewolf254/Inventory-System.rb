# Login part
# Declarations
EXTENSION_CONSTANT = ".credentials"
puts "================== Inventory System =================="
puts "======================= Login ========================"
print"= Username: "
username = gets.chomp.to_s #Prompt for username
print"= Password: "
password = gets.chomp.to_s #Prompt for password
puts "===================================================="
PATH_CONSTANT = "Records/"
# Check if username and password exists
if File.exist?(PATH_CONSTANT + username + EXTENSION_CONSTANT) #If user exists
    # Check if it contains correct password
    password_verification = File.read(File.join(PATH_CONSTANT, username + EXTENSION_CONSTANT))
    record_password = password_verification.chomp.to_s
    if password == record_password
        print "Successfully Logged in!"
        # More actions
    else
        print "Invalid Username/Password!"
    end
else
    print "User does not exist."
end