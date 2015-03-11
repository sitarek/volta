Volta::Application.routes.draw do
  root to: 'events#index'

  resources :events do
    get :fav, on: :collection
    resources :comments, only: [:create]
  end
end
