Rails.application.routes.draw do
  get 'complaints/index'

  get 'complaints/results'
  get 'complaints/details/:id', to: 'complaints#details'
  root 'complaints#index'
  #get 'complaints#consumer_search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
