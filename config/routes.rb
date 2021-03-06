Rails.application.routes.draw do
  #get 'sessions/new'
  root 'chat#index'
  #mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chat
  resources :register
  resources :users
  resources :sessions
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  #post 'show' => 'chat#create'
end
