Rails.application.routes.draw do
  root 'top#index'

  get 'opening_starting_lineup/:team/:year' => 'opening_starting_lineup#index', as: :index_opening_starting_lineup
  post 'opening_starting_lineup/:team/:year' => 'opening_starting_lineup#create', as: :create_opening_starting_lineup
  post 'opening_starting_lineup/:team/:year/comment' => 'opening_starting_lineup#create_comment', as: :create_opening_starting_lineup_comment

  get 'ranking/:league/:year' => 'ranking#index', as: :index_ranking
  post 'ranking/:league/:year' => 'ranking#create', as: :create_ranking
  post 'ranking/:league/:year/comment' => 'ranking#create_comment', as: :create_ranking_comment  

  resources :users, only: [:new, :create, :edit, :update]

  namespace :user do
    resources :mypage, only: [:index]
    resources :opening_starting_lineup, only: [:create, :edit]
  end

  get 'login' => 'sessions#new', as: :login
  post 'session' => 'sessions#create', as: :session
  delete 'session' => 'sessions#destroy'
end
