Rails.application.routes.draw do
  root 'top#index'

  get 'opening_starting_lineup/:team/:year' => 'opening_starting_lineup#index', team: Team.name_regexp_for_routing, year: 2018, as: :index_opening_starting_lineup
  post 'opening_starting_lineup/:team/:year' => 'opening_starting_lineup#create', team: Team.name_regexp_for_routing,  as: :create_opening_starting_lineup
  post 'opening_starting_lineup/:team/:year/comment' => 'opening_starting_lineup#create_comment', team: Team.name_regexp_for_routing,  as: :create_opening_starting_lineup_comment

  resources :users, only: [:new, :create, :edit, :update]

  namespace :user do
    resources :mypage, only: [:index]
    resources :opening_starting_lineup, only: [:create, :edit]
  end

  get 'login' => 'sessions#new', as: :login
  post 'session' => 'sessions#create', as: :session
  delete 'session' => 'sessions#destroy'
end
