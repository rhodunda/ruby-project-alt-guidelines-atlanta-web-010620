class User < ActiveRecord::Base
    has_many :user_movies
    has_many :movies, through: :user_movies
    has_many :likes
    # has_many :movies, through: :likes
    has_many :reviews
    # has_many :movies, through: :reviews
    

    def most_active_user
      
    end 
    

    def watched
        usermovie = self.user_movies.where(watched: true)
        usermovie.map{|i| i.movie.title}
    
    end 
end 