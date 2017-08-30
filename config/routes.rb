Rails.application.routes.draw do
  root 'starts#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # comments create
  post '/posts/:post_id/comments/create'=> 'comments#create'

  # comments destroy
  post '/' => 'comments#destroy'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
