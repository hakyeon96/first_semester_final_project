Rails.application.routes.draw do
  get 'home/main_page' => 'home#main_page'
  get 'home/login' => 'devise/sessions#new'
  get 'home/upload' => 'home#upload'
  get 'home/view' => 'home#view'
  
  #링크안돼서 추가했슴당 ㅎㅎ 
  #이거 구냥 어차피 상관없으니까
  #추가해쥬세요
  get 'home/posts/index' => 'posts#index'
  devise_for :users

  root 'home#main_page'

  post '/create' => 'home#create'
  get '/show' => 'home#show'
  get '/main' => 'home#main'
  get '/result' => 'home#result'
  get '/mypage' => 'home#mypage'
  get '/destroy/:post_id' => "home#destroy"
  get '/edit/:post_id' => "home#edit"
  post '/update/:post_id' => "home#update", as: 'post_update'
  

  
<<<<<<< HEAD
  get 'posts/new' => 'posts#new'
  get 'posts/index' => 'posts#index'
<<<<<<< HEAD
  get 'comments/destroy/:id' => 'comments#destroy', as: 'comments_destroy'
  get 'comments/edit/:id' => 'comments#edit', as: 'comments_edit'
  post 'comments/update/:id' => 'comments#update', as: 'comments_update'
=======
>>>>>>> c5dc861e45b9460b7d541bf705f5c183cc3f488f
  
  post 'posts/create/:id' => 'posts#create', as: 'post_create'
  post 'comments/create' => 'comments#create', as: 'comment_create'
  end
  
=======
  get 'posts/new' => 'posts#new', as: 'posts_new'
  get 'posts/index' => 'posts#index' 
  
  post 'posts/create/:id' => 'posts#create', as: 'post_create'
  post 'comments/create' => 'comments#create', as: 'comment_create'
  

  post 'posts/search' => 'posts#search', as: 'posts_search'
  
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
>>>>>>> origin/jiwon-backend-dev
