Rails.application.routes.draw do

resources :ratings, only: [:show, :new, :create]
resources :labels, only: [:show]

resources :advertisements, :questions
resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]

resources :topics do
  resources :posts, except: [:index]
  resources :sponsored_posts, except: [:index]
end

#resources :posts, only: [] do
resources :posts do
  resources :comments, only: [:create, :destroy]
end

post 'users/confirm' => 'users#confirm'

get 'about' => 'welcome#about'
  
root to: 'welcome#index'
  
  
end
