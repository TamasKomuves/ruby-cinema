Rails.application.routes.draw do
  get 'categories/admin_index'
  get 'screenings/admin_index'
  get 'screenings/index'
  get 'screenings/edit'
  get 'tickets/:id', to: 'tickets#new', as:'ticket'
  get 'movies/admin_index'
  get 'auditoria/admin_index'
  root to: 'welcome#show'

  resources :tickets, only: [:create, :index]
  resources :screenings
  resources :movies
  resources :auditoria
  resources :categories

  get 'welcome/show'
end
