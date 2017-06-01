
Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> dc10feba25abb1079350716f41e38da98d792885
  get 'home/main_page' => 'home#main_page'
  get 'home/login' => 'home#login'
  get 'home/upload' => 'home#upload'
  get 'home/view' => 'home#view'
  

<<<<<<< HEAD
=======
>>>>>>> 37d17ee9647dff7662e3f228783a65dae70448e2
=======
  
  devise_for :users
  root 'home#index'
  
  
  #resources :users
  
  
  #root 'index'
>>>>>>> 74130781a95fefc05d0b2cb0d25e52bb790698f5
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
=======
>>>>>>> dc10feba25abb1079350716f41e38da98d792885
  root 'home#main_page'

  post '/create' => 'home#create'
  get '/show' => 'home#show'
  get '/main' => 'home#main'
  get '/result' => 'home#result'

  
  get 'posts/new' => 'posts#new'
  
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