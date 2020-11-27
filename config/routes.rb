Rails.application.routes.draw do
  resources :keywords
  resources :entities
  resources :intents
  resources :posts
  resources :homes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
