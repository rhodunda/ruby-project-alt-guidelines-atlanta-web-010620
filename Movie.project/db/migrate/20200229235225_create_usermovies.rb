class CreateUsermovies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_movies do |t|
      t.integer :user_id
      t.integer :movie_id
      t.boolean :watched, default: false
    end 
  end
end

