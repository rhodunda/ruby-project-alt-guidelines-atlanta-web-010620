class Like < ActiveRecord::Base
    belongs_to :user
    belongs_to :movie

    def self.most_popular 
       #help
    end 

    def user_likes
        
    end 

    def most_popular_actor
        #strech goal 
    end 
end 
