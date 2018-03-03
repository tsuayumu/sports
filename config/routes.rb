Rails.application.routes.draw do
  root 'top#index'
  resources :opening_stating_lineup, only: [:index]
  namespace :user do
    resources :mypage, only: [:index, :edit, :create]
    resources :opening_stating_lineup, only: [:create, :edit]
  end
end
