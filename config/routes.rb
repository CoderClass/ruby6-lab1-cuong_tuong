Rails.application.routes.draw do
  get 'photos/index'

  get 'photos/show'

  resources :photos

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
