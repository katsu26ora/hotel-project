Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, :only => [:new, :create, :show]
  resources :prefectures, :only =>[:index, :show]  
  resources :users, :only =>[:new, :create, :show, :edit, :update, :destroy]  
  resources :hotels, :only => [:index, :show] do
    resources :reviews, :only =>[:index, :new, :create, :show]
    resources :reservations, :only =>[:new, :create, :show]
    resources :likes, only: [:create, :destroy]
  end
root to: 'hotels#index'
end

