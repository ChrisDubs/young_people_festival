Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resource :artists, only: :index
  resource :tickets, only: :index

  root 'home#index'

  match '/about_us',     to: 'home#about_us',   via: 'get'
  match '/contact_us',   to: 'home#contact_us',   via: 'get'
  match '/cooperation',  to: 'home#cooperation',  via: 'get'
  match '/place',        to: 'home#place',        via: 'get'
end
