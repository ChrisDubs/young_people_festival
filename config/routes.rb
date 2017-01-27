Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  match '/contact_us',  to: 'home#contact_us',  via: 'get'
end
