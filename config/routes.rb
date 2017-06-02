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
  
  post 'posts/create/:id' => 'posts#create', as: 'post_create'
  post 'comments/create' => 'comments#create', as: 'comment_create'
  end
  