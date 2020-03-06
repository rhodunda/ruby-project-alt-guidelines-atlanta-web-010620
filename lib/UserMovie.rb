class UserMovie < ActiveRecord::Base
    belongs_to :user
    belongs_to :movie

    def watched
        #check if this is needed
        #if a user has watched a movie
    end 
    
end 
