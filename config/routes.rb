Rails.application.routes.draw do
  devise_for :users
  #get 'posts/index'
  resources :posts , controllers: { registrations: 'registrations' }
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
