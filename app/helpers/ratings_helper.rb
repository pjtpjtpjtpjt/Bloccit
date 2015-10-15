module RatingsHelper
    def ratings_to_buttons(ratings)
  
    link_to rating.name, rating_path(id: ratable.id), class: 'btn-xs btn-primary'
    end
end
