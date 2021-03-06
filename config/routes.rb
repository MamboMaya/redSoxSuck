Rails.application.routes.draw do
  # get 'players/index'
  #
  # get 'players/show'
  #
  # get 'players/edit'
  #
  # get 'players/new'

  # get 'cities/index'
  #
  # get 'cities/show'
  #
  # get 'cities/edit'
  #
  # get 'cities/new'

  # get 'teams', to: 'teams#index', as: 'teams'
  #
  # get 'teams/:id', to: 'teams#show', as: 'team'
  #
  # get 'team/new', to: 'teams#new', as: 'new_team'
  #
  # post 'teams', to: 'teams#create'
  #
  # get 'teams/:id/edit', to: 'teams#edit', as: 'edit_team'
  #
  # patch 'teams/:id', to: 'teams#update'


  resources :players
  resources :teams do
    resources :players
  end

  resources :cities do
    resources :teams
    resources :players
  end

  root 'cities#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
