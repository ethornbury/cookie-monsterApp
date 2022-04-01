Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #set your routes
  #get 'home/set_cookie'
  get 'home/show_cookie'
  get 'home/delete_cookie'
  
  get '/set', to: 'home#set_cookie'
end
