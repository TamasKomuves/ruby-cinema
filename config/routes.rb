Rails.application.routes.draw do
  get 'screenings/admin_index'
  get 'screenings/index'
  get 'screenings/edit'
  get 'tickets/:id', to: 'tickets#new', as:'ticket'
  get 'movies/admin_index'
  root to: 'welcome#show'

  resources :tickets, only: [:create, :index]
  resources :screenings
  resources :movies

  get 'welcome/show'
end
