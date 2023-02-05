Rails.application.routes.draw do
  get 'message/index' => "message#index"
  get 'message/show/:id' => "message#show"
  get 'message/new' => "message#new"
  post 'message/create' => "message#create"
  get 'message/answer/:id' => "message#answer"
  post 'message/update/:id' => "message#update"
  post 'message/del/:id' => "message#del"
  
  get 'illust/index' => "illust#index"
  get 'illust/show/:id' => "illust#show"
  get 'illust/showtp/:id' => "illust#showtp"
  get 'illust/new' => "illust#new"
  post "illust/create" => "illust#create"
  get 'illust/edit/:id' => "illust#edit"
  post 'illust/update/:id' => "illust#update"
  post 'illust/del/:id' => "illust#del"


  get 'editor/login_form' => "editor#login_form"
  post 'editor/login' => "editor#login"
  post 'editor/logout' => "editor#logout"


  get '/' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
