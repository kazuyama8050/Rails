Rails.application.routes.draw do
  # devise_for :users
  root "top#index"
  get "about" => "top#about", as: "about"


  resources :companies do
    get "search", on: :collection
  end

  resources :schedules do
    get "search", on: :collection
  end

  resources :searchers do
    get "search", on: :collection
  end

  resources :studies do
    get "search", on: :collection
  end

  resources :receives do
    get "search", on: :collection
  end

  resources :mouths do
    get "search", on: :collection
  end

  get 'accounts' => 'accounts#index'
  get 'accounts/:mine' => 'accounts#show'
  get 'accounts/new' => 'accounts#new'
  post 'accounts' => 'accounts#create'
  get 'accounts/:mine/edit' => 'accounts#edit'
  patch 'accounts/:mine'  => 'accounts#update'
  delete 'accounts/:mine' => 'accounts#destroy'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

end
