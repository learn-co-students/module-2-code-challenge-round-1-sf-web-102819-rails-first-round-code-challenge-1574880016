Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create, :edit, :update]  
  get '/search', to: 'heroines#search'
end
