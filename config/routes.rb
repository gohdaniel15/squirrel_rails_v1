Rails.application.routes.draw do

  root "challenges#index"

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :challenges

end
