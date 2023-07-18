Rails.application.routes.draw do
  root 'posts#index'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts', to: 'posts#create' # Updated route for create action
  get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#destroy'
  get 'posts/:id', to: 'posts#show', as: 'post' # Updated route for show action
      
  resources :users
  #resources :posts
end

