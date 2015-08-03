class Movie < ActiveRecord::Base
<<<<<<< HEAD
  has_many :reviews
=======

  has_and_belongs_to_many :actors

>>>>>>> 5e394cf751f7edff452ced37608d8372344dffb9
end
