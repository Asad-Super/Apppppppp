Rails.application.routes.draw do
  root 'posts#index'
  
    get 'posts', to: 'posts#index'
    get 'posts/new', to: 'posts#new', as: :new_post
    post 'posts', to: 'posts#create'
    get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
    patch 'posts/:id', to: 'posts#update'
    delete 'posts/:id', to: 'posts#destroy'
   get 'posts/:id/show', to: 'posts#show' 
  resources :users
end

