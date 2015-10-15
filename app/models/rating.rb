class Rating < ActiveRecord::Base
enum name: [ :PG, :PG13, :R ]

#has_many :rates

   belongs_to :ratable, polymorphic: true
   
    #has_many :posts, through: :rate, source: :ratable, source_type: :Post
   #has_many :topics, through: :rating, source: :ratable, source_type: :Topic


    # def self.update_ratings(rating_string)
    #  new_ratings = []

    #  unless rating_string.nil? || rating_string.empty?

       
    #    rating_name = rating_string
    #    new_rating = Rating.find_or_create_by(name: rating_name)
       
    #  end
    #  new_ratings
    # end
      
    
   
end
   
   

   

  


