Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'flights#index'
  resources :flights do 
    resources :bookings, only: [:create]
  end
   resources :bookings do 
    resources :passengers , only: [:show]
   end


   default_url_options :host => 'localhost:3000'
end
