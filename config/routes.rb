Rails.application.routes.draw do
  get '/' => 'root#top'

  get 'posts' => 'posts#index'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  patch 'posts/:id' => 'posts#update', as: 'update_post'
  delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
  get 'posts/:id' => 'posts#show', as: 'post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
