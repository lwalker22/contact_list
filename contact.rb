require 'colorize'
require 'pry'
# Create a menu that allows a user to select 
  # grab user input 
  # gets
  # menu 
  # create an item to store all the contacts 
  #1) Create a contact
    # grab user input 
    # save data into var
    # save new contact in the item i store all the contacts
  # 2) View All Contacts 
  # 3) Exit
    #  exit
# The menu should loop until the user exits
# puts 'hello'.colorize(:blue)
# array of hashes 

contacts = []

def main_menu
  puts 'hello welcome to my contact list'.colorize(:green)
  puts 'what would you like to do?:'
  puts '1) Create a contact'
  puts '2) View all contacts'
  puts '3) Exit'
  user_input = gets.strip.to_i

  case user_input
  when 1
    puts "Let's create the contact:"
    create_contact
  when 2
    puts "Here's all the contacts"
    view_contact
  when 3
    puts "Goodbye"
    exit
  else 
    puts "Wrong input. Please try again"
    main_menu
  end
  binding.pry
end

main_menu

def create_contact 
  {first_name: " ", last_name: " ", phone_number: " ", email: " " }
end

def view_contact
end



  # if user_input === 1
  #   # puts 'create'
  #   create

  # elsif user_input === 3
  #   exit
  # else 
  #   puts 'invaild input, try again'
  #   main_menu
  # end
  # case user_input
  # when 1
  #   puts 'create'
  # else
  #   puts 'invaild input, try again'
  # end
  # user_input = gets.strip
  # if user_input == '1'
  #   puts 'create'
  # end
  # binding.pry











