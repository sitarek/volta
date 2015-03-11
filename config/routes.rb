Volta::Application.routes.draw do
  root to: 'welcome#index'

  resources :products do
    resources :comments, controller: 'product_comments', only: [:create]
  end

  resources :events do
    get :fav, on: :collection
    resources :comments, controller: 'event_comments', only: [:create]
  end
end
