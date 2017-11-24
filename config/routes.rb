Rails.application.routes.draw do

  root "challenges#index"

  devise_for :users, :controllers => { registrations: 'users/registrations' }

  resources :challenges

end
