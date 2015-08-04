class Review < ActiveRecord::Base
<<<<<<< HEAD
<<<<<<< HEAD

  belongs_to :user
=======
  
  belongs_to :movie
>>>>>>> movie_review
=======
  belongs_to :movie

  belongs_to :user
>>>>>>> e4d4061acbb3037ad7b1bb8d8b0f98622aba1c9b
end
