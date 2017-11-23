Rails.application.routes.draw do

  root 'instructors#index'

  devise_for :users

end
