Rails.application.routes.draw do
  # get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  root "articles#index"
  
  resources :articles do
    resources :comments
  end

  get '/search' => 'travel#search'
  get '/travel' => 'travel#travel'
end
