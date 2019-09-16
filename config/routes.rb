Rails.application.routes.draw do
  root 'homes#home'
  get 'about', to: 'homes#about', as: :about
  resources :posts
  resources :comments
  resources :categories
  devise_for :users,:controllers => { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords' }
  get 'users/profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
