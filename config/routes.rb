Rails.application.routes.draw do

  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'team', to: 'pages#team'
  get 'team', to: 'pages#team'
  get 'surgery', to: 'pages#surgery'
  get 'nutrition', to: 'pages#nutrition'
  get 'doctor', to: 'pages#doctor'
  get 'turnos', to: 'pages#turnos'
  resources :articles
  resources :contacts, only: [:new, :create]
  resources :videos
  resources :users, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
