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
  get '/mypage' => 'home#mypage'
  get '/destroy/:post_id' => "home#destroy"
  get '/edit/:post_id' => "home#edit"
  post '/update/:post_id' => "home#update", as: 'post_update'
  

  
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
  