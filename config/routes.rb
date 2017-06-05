Rails.application.routes.draw do
  
  root 'home#main_page'
  
  # get 'home/main_page' => 'home#main_page'
  get 'home/login' => 'devise/sessions#new'
  get 'home/upload' => 'home#upload'
  get 'home/view' => 'home#view'
  
  #링크안돼서 추가했슴당 ㅎㅎ 이거 구냥 어차피 상관없으니까 추가해쥬세요
  get 'home/posts/index' => 'posts#index'
  devise_for :users

  post '/create' => 'home#create'
  get '/show' => 'home#show'
  get '/main' => 'home#main'
  get '/result' => 'home#result'
  get '/mypage' => 'home#mypage', as: "mypage"
  get '/destroy/:post_id' => "home#destroy"
  get '/edit/:post_id' => "home#edit"
  post '/update/:post_id' => "home#update", as: 'post_update'
  
  get 'comments/destroy/:id' => 'comments#destroy', as: 'comments_destroy'
  get 'comments/edit/:id' => 'comments#edit', as: 'comments_edit'
  post 'comments/update/:id' => 'comments#update', as: 'comments_update'
  post 'comments/create' => 'comments#create', as: 'comment_create'
 
  post 'posts/create/:id' => 'posts#create', as: 'post_create'
  get 'posts/new' => 'posts#new', as: 'posts_new'
  get 'posts/index' => 'posts#index' 
  post 'posts/search' => 'posts#search', as: 'posts_search'
  
end

