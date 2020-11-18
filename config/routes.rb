Rails.application.routes.draw do
  devise_for :users
  root "wines#new"
  resources :wines
  resources :assemblies
  resources :strains
  resources :enologists
  resources :magazines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
