Rails.application.routes.draw do
  get 'screenings/index'
  get 'tickets/:id', to: 'tickets#new', as:'ticket'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'clearance/sessions#new'

  resources :tickets, only: [:create, :index]

  get 'welcome/show'
end
