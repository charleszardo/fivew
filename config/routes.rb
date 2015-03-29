Rails.application.routes.draw do
  resources :games
  resources :whos
  
  root 'games#new'
end
