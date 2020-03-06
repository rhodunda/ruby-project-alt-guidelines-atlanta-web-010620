require 'pry'
require "tty-prompt"


class CLI

    # def initialize(user)
    # @current_user = user
    # @tty = TTY::Prompt.new
    # end

    def login
        prompt = TTY::Prompt.new
            login_screen = prompt.select("login or create user", %w(Create_User Login Exit ))
                if login_screen == "Create_User"
                name = prompt.ask("Type your name")
                password = prompt.mask("Make Password")
                username = prompt.ask('select Username')
                @the_user = User.create(name: name, password: password, username: username)
                main_menu
                elsif login_screen == "Login"
                    username = prompt.ask("Type Username")
                    password = prompt.mask("Type Password")
                # begin
                @the_user = User.find_by!(username: username, password: password)
                main_menu
                # # rescue 

                #     puts "TRY AGAIN"
                #     login
                # end 
                else login_screen == "exit"
                    exit
                end 

    end 

    def main_menu
        prompt = TTY::Prompt.new
        main_menu = prompt.select('pick a option', "Account", "Browse all Movies", "My movie list", "Exit")
            if main_menu == "Account"
                account_options
            elsif main_menu == "Browse all Movies"
                menu_movies
            elsif main_menu == "My movie list"
                search_menu
            else main_menu == "Exit"
                    
            end  


    end 


    def menu_movies
        prompt = TTY::Prompt.new
        #add a back to the movies_selected prompt
            movies_selected = prompt.select("Choose a Movie",(Movie.all.map{|movie| movie.title})) 
            movie_picked = Movie.find_by title: movies_selected
            user_movie = UserMovie.find_or_create_by(user_id: @the_user.id, movie_id: movie_picked.id)
            action = prompt.select("interact with the movie", %w(Watched Like Review Exit))
                if action == "Watched"
                    user_movie.watched = true
                    user_movie.save
                    main_menu
                elsif action == "Like"
                    Like.create(user_id: @the_user.id, movie_id: movie_picked.id)
                    main_menu
                elsif action == "Review"
                    reviewz = prompt.ask("type a review")
                    Review.create(user_id: @the_user.id, movie_id: movie_picked.id, review: reviewz)
                    main_menu
                elsif action == 'exit'
                    main_menu
                end 
                
                
    end 
     ############################### FIX THIS METHOD #######################################
    def user_home_screen
        prompt = TTY::Prompt.new
        selected = prompt.select("choose an option", %w(View_liked View_reviewed View_Watched Main_menu Edit_Review))
        
                # binding.pry
            if selected == "View_liked"
                #below for reviews
                #use where Movie.where(movie_id: "array of ids")
                # returns all the like ojs
                # liked_all = @the_user.likes.from(Movie)
                # binding.pry
                liked_all = @the_user.likes.map{|like| like.movie.title}
                count = 1
                    liked_all.each do |like|
                    puts "#{count}. #{like}"
                    count += 1
                    end 
                    sleep(2)
                    main_menu
            elsif selected == "View_reviewed"
                #return all reviews 
                #needs to also return the users for the review
                # binding.pry
                review_all = @the_user.reviews
                
                
                count = 1
                review_all.each do |review|
                    # binding.pry
                puts "#{count}. movie: #{review.movie.title}   review: #{review.review}"
                count += 1
                end

                sleep(2)
                main_menu
            elsif selected == "Edit_Review"
                review_all = @the_user.reviews
                
                
                count = 1
                new_hash = {}
                review_movie = review_all.map do |i|
                    # binding.pry
                    #  new_hash[i.movie.title] = i.review
                    "movie: #{i.movie.title}   review: #{i.review}"
                    
                end
                selected = prompt.select("choose one", review_movie)
                selected = selected.split('review: ')[1]
                review_oj = @the_user.reviews.find_by(review: selected)
                ask = prompt.ask("update your review")
                # # binding.pry
                review_oj.review = ask
                review_oj.save
                # review_oj.update(review: ask)
                
                main_menu
            
            elsif selected == "View_Watched"
                puts  "#{@the_user.watched}"
                sleep(2)
                main_menu
            elsif selected == "Main_menu"
                main_menu
            end 
    end 


    def account_options
        prompt = TTY::Prompt.new
        selected = prompt.select("choose a option", "Delete user", "Logout", "Main menu")
        
            if selected == "Delete user"
                @the_user.delete
            elsif selected == "Logout"
                login
            elsif selected == "Main menu"
                main_menu
            end 
            
    end 

    def search_menu
        prompt = TTY::Prompt.new
        selected = prompt.select("search by", "Alphabetical", "Most Popular", "Your list")
        if selected == "Alphabetical"
            count = 1
            Movie.sort_alphabetical.each do |i|
                puts "#{count}. #{i}"
                count+=1
            end 
            2.times do 
                puts ''
                sleep(2)
                main_menu
            end 
            main_menu
        elsif selected == "Most Popular"
            new_hash = {}
            Movie.all.each do |movie|
            most = Like.find_each.select{|like| like.movie_id == movie.id}
            new_hash[movie.title] = most.length
            end
            count = 1
            finalhash = new_hash.sort_by{|k, v| -v} 
            puts "most popular"
            finalhash.each do |key, value|
                puts "#{count}. #{key} #{value}"
                count += 1
        end
                main_menu
        elsif selected == "Your list"
            user_home_screen
        end 
        
    end 
end 




#add back to all movies
#user watched displays an array


#streach goals 
#add unlike
#add unwatch 
#add most popular by: watched and reviewed







