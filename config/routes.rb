Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'team', to: 'pages#team'
  get 'team', to: 'pages#team'
  get 'surgery', to: 'pages#surgery'
  get 'nutrition', to: 'pages#nutrition'
  get 'doctor', to: 'pages#doctor'
  get 'turnos', to: 'pages#turnos'
  get 'red-icono', to: 'pages#red'
  get 'saco', to: 'pages#saco'
  resources :articles
  resources :contacts, only: [:new, :create]
  resources :videos
  resources :users, only: :index
  resources :posts
  resources :programs
  resources :networks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
