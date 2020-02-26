require 'pry'
require "tty-prompt"
class CLI 

puts"



"
     


puts"   
        __   __  
       /  `-'  \\
      /_| D   |_\\
        |  E  |  
        |   L |  
        |_____|
 
        ,==D==.
        |_/|\\_|
        | ´|` |
        |  |  |
        |  |  |
        |__|__|

 "


def welcome_message
    prompt = TTY::Prompt.new
    puts "Welcome to DEL-A-WEARS Online Market Place "

 puts "
 
 
 
 "
end 
def login_in
    prompt = TTY::Prompt.new

 pick_user_or_login = prompt.select("Make a selection?", %w(Create_user Login Exit))
    if pick_user_or_login  == "Create_user" 
      name = prompt.ask('whats is your name?')
      password = prompt.mask('make password')
     @the_user = User.create(name: name, password: password, money_spent: 0)
      product_selection  #method 
    elsif pick_user_or_login == 'Exit'

    else  pick_user_or_login == "Login"
      name = prompt.ask('whats is your name?')
      password = prompt.mask('make password')
       @the_user = User.find_by(name: name )

      
       puts "loging in "

       sleep(1)
       puts '...'
       sleep(1)
       puts '...'
       sleep(1.5)
       puts 'loading..'
       sleep(1.5)
       puts 'Welcome to DEL-A-WEARS Online Market Place'
 acount_options = prompt.select('choose an option', %w(Delete_user Shop))
 if acount_options == 'Shop'
    product_selection
 else  acount_options == 'Delete_user'
    @the_user.delete
    puts "delecting"
    sleep(1)
    puts "delected"
    sleep(1.5)
    login_in 
      end 
  end 
end 
   
puts "
       


"
def product_selection
    prompt = TTY::Prompt.new
    @product_selected = []

    index = 1
    while index == 1

      
    shopping_round_1 = prompt.select('choose a product',(Product.all.map{|product| product.name}))
    products_picked = Product.find_by name: shopping_round_1

  
    @product_selected << products_picked.price
    price = @product_selected.sum 
   
    @the_user.money_spent = price
    
   # instance of a purchase
   #working #########################
   #how do it save the purchase history with out decaling a golbal varable 
    @purchase = Purchase.create(amount: price, product_id: products_picked.id, user_id: @the_user.id, sold: true)

puts "
        
        
 "
puts "
    
    
    
"                       #product one selected

    done = prompt.select('are you done shopping?', %w(Yes NO))
    if done == 'Yes'
    index = 2

    check_out = prompt.select(" your total is #{price} cash or credit", %w(Cash Credit))
    if    check_out == "Cash"
        puts "Thanks for Shopping"
       
        check_out_menu

        
    else 
        puts "Thanks for Shopping"
        check_out_menu
        
        end 
     end  
  end 
end 
       
     
     def check_out_menu
        prompt = TTY::Prompt.new
  
        menu = prompt.select('choose an option', %w(Shop Main_menu Logout Account_options))
    if  menu == 'Shop'

       
        product_selection
    elsif  menu == 'Main_menu'
        login_in
    elsif  menu == 'Logout'


    else menu == 'Account_options' 
    puts 'loading'
    sleep(0.5)
    puts "
    
    
    
    "
    User.find_by(name: @the_user)
   life_time_purchase = Purchase.find_by(user_id: @purchase)
    puts @the_user.name.upcase
    puts  = 
puts "



"
sleep(2)
      check_out_menu
    
           end 
        end 
     end

