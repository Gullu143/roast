Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/edit'
  get 'categories/new'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/edit'
  root 'homes#home'
  get 'about', to: 'homes#about', as: 'about'
  resources :posts
  resources :comments
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
