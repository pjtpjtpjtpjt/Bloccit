Rails.application.routes.draw do

resources :ratings, only: [:show, :new, :create]
resources :labels, only: [:show]

resources :advertisements, :questions
resources :users, only: [:new, :create, :show]
resources :sessions, only: [:new, :create, :destroy]

resources :topics do
  resources :posts, except: [:index]
  resources :sponsored_posts, except: [:index]
end

#resources :posts, only: [] do
resources :posts do
  resources :comments, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  
  post '/up-vote' => 'votes#up_vote', as: :up_vote
     post '/down-vote' => 'votes#down_vote', as: :down_vote
end

post 'users/confirm' => 'users#confirm'

get 'about' => 'welcome#about'

get 'faq' => 'welcome#faq'
  
root to: 'welcome#index'
  
  
  namespace :api do
     namespace :v1 do
   
       resources :users, only: [:index, :show, :create, :update]
       
       
       resources :topics do
           resources :topics, except: [:edit, :new]
           resources :posts, only: [:create]
       end
       
       resources :posts, only: [:update, :destroy, :show]
       resources :comments, only: [:show]
      
      end
   end


end
