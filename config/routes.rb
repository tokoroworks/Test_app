Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  get 'todolists' => 'todolists#index'
  get 'todolists/new' => 'todolists#new', as: 'todolist_new'
  post 'todolists' => 'todolists#create'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
end
