Rails.application.routes.draw do
  root 'top#index'
  get 'opening_starting_lineup/:team/:year' => 'opening_starting_lineup#index', team: Team.name_regexp_for_routing, year: 2018, as: :index_opening_starting_lineup
  namespace :user do
    resources :mypage, only: [:index, :edit, :create]
    resources :opening_starting_lineup, only: [:create, :edit]
  end
end
