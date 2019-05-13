
Rails.application.routes.draw do
 
  root to: 'posts#index' 
  devise_for :users

  resources :posts do
    resources :comments, module: :posts
  end

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  
end
