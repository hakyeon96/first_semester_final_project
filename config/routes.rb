
Rails.application.routes.draw do

  get 'home/main_page' => 'home#main_page'
  get 'home/login' => 'devise/sessions#new'
  get 'home/upload' => 'home#upload'
  get 'home/view' => 'home#view'
  devise_for :users

  root 'home#main_page'

  post '/create' => 'home#create'
  get '/show' => 'home#show'
  get '/main' => 'home#main'
  get '/result' => 'home#result'

  
  get 'posts/new' => 'posts#new'
  get 'posts/index' => 'posts#index'
  get 'comments/destroy/:id' => 'comments#destroy', as: 'comments_destroy'
  get 'comments/edit/:id' => 'comments#edit', as: 'comments_edit'
  post 'comments/update/:id' => 'comments#update', as: 'comments_update'
  
  post 'posts/create' => 'posts#create', as: 'post_create'
  post 'comments/create' => 'comments#create', as: 'comment_create'
  
  
  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end