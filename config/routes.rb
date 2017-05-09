Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :cooperations

  root 'home#index'

  match '/artists',       to: 'artists#index',       via: 'get'
  match '/tickets',       to: 'tickets#index',       via: 'get'
  match '/about_us',      to: 'home#about_us',       via: 'get'
  match '/contact_us',    to: 'home#contact_us',     via: 'get'
end
