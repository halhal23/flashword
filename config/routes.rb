Rails.application.routes.draw do
  root 'types#index'
  get 'insert/(:id)' => 'words#new'
  resources :types
  resources :words
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
