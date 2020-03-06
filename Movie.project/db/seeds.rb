puts "destroying seed data"
    User.destroy_all
    Movie.destroy_all
    UserMovie.destroy_all
    Like.destroy_all
    Review.destroy_all

puts "creating Users"
    user1 = User.create(name:'Bryan', password:'dolphins', username:'Rhodunda')
    user2 = User.create(name:'Will', password:'76ers', username:'Willbo')
    user3 = User.create(name:'John', password:'Redsox', username:'PaintBall_1234')
    user4 = User.create(name:'jenny', password:'Sunshine', username:'sunshine33')

puts "User created"
puts "creating Movie"
    movie2 = Movie.create(title:'The Matrix', actor: 'acotor2', rating:8)
    movie3 = Movie.create(title:'Its a Wonderful Life', actor: 'actor3', rating:10)
    movie4 = Movie.create(title:'Gladiator', actor: 'actor4', rating:9)
    movie5 = Movie.create(title:'2002 A Space Odyssey', actor: 'actor5', rating:10)
    movie6 = Movie.create(title:'Taxi Driver', actor: 'actor6', rating:7)
    movie7 = Movie.create(title:'Pulp Fiction', actor: 'actor7', rating:10)
    movie8 = Movie.create(title:'Fight Club', actor: 'actor8', rating:6)
    movie9 = Movie.create(title:'Inception', actor: 'actor9', rating:9)
    movie10 = Movie.create(title:'interstellar', actor: 'actor10', rating:7)
    movie11 = Movie.create(title:'The Departed', actor: 'actor11', rating:8)
    movie12 = Movie.create(title:'The prestige', actor: 'actor12', rating:9)
    movie13 = Movie.create(title:'Casablanca', actor: 'actor13', rating:9)
    movie14 = Movie.create(title:'Apocalypse Now', actor: 'actor14', rating:7)
    movie15 = Movie.create(title:'Memento', actor: 'actor15', rating:10)
    movie16 = Movie.create(title:'Full Metal Jacket', actor: 'actor16', rating:7)
    movie17 = Movie.create(title:'Scarface', actor: 'actor17', rating:11)
    movie18 = Movie.create(title:'UP', actor: 'actor18', rating:8)
    movie19 = Movie.create(title:'Heat', actor: 'actor19', rating:9)
    movie20 = Movie.create(title:'A Beautiful Mind', actor: 'actor20', rating:10)
    movie21 = Movie.create(title:'Rounders', actor: 'actor21', rating:15)
    movie22 = Movie.create(title:'Raging Bull', actor: 'actor22', rating:7)
    movie23 = Movie.create(title:'The Wolf of Wall Street', actor: 'actor23', rating:8)
    movie24 = Movie.create(title:'V for Vendetta', actor: 'actor24', rating:9)
    movie25 = Movie.create(title:'Jurassic Park', actor: 'actor25', rating:10)
    movie26 = Movie.create(title:'Finding Nemo', actor: 'actor26', rating:10)
    movie27 = Movie.create(title:'Gran Torino', actor: 'actor27', rating:10)
    movie28 = Movie.create(title:'12 Years a Slave', actor: 'actor28', rating:8)
    movie29 = Movie.create(title:'Platoon', actor: 'actor29', rating:9)
    movie30 = Movie.create(title:'Monsters, Inc.', actor: 'actor30', rating:12)
    movie31 = Movie.create(title:'Guardians of the Galaxy', actor: 'actor31', rating:9)
    movie32 = Movie.create(title:'The Dark Knight', actor: 'actor32', rating:2)
    movie33 = Movie.create(title:'Goodfellas', actor: 'actor33', rating:1)
    movie34 = Movie.create(title:'One Flew Over the Cuckoos Nest', actor: 'actor34', rating:1)
    movie35 = Movie.create(title:'Parasite', actor: 'actor35', rating:8)
    

puts "creating UserMovie"
    netflex1 = UserMovie.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, watched: false)
    netflex2 = UserMovie.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, watched: false)
    netflex3 = UserMovie.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, watched: false)
    netflex4 = UserMovie.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, watched: false)
    netflex5 = UserMovie.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, watched: false) 

puts "UserMovie created"
puts "creating likes"

    like1 = Like.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
    like2 = Like.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
    like3 = Like.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
    like4 = Like.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
    like5 = Like.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id)

puts "created likes"

    review1 = Review.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, review: 'this is a review')
    review2 = Review.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, review: 'writing a review')
    review3 = Review.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, review: 'I give this movie 5 stars')
    review4 = Review.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, review: 'reviewingggggggg')
    review5 = Review.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, review: 'review')

puts "seed data created"



# user1 = User.create(name:'Bryan', password:'dolphins', username:'Rhodunda')

# movie2 = Movie.create(title:'The Matrix', actor: 'acotor2', rating:8)

# netflex1 = UserMovie.create(user_id: User.all.sa, movie_id: Movie.all.sample.id, watched: false)

# like1 = Like.create(user_id: 17, movie_id: Movie.all.sample.id)

# review1 = Review.create(user_id: 17, movie_id: Movie.all.sample.id, review: 'this is a review')

