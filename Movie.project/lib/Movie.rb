class Movie < ActiveRecord::Base
    has_many :user_movies 
    has_many :users, through: :user_movies
    has_many :likes
    # has_many :users, through: :likes
    has_many :reviews 
    # has_many :users, through: :reviews

    def self.sort_alphabetical
        Movie.all.map{|movie| movie.title}.sort
    end 

    def sort_most_reviewed

    end 

    def self.sort_highest_rating
        #sorted need to get the name
        Movie.all.map{|movie| movie.rating}.sort
    end 

    def select_actor(actor_input)
        
    end 

    def self.select_movie_title(title)
        Movie.find_by(title: title)
    end 


end 


