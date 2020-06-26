Rails.application.routes.draw do
  devise_for :accounts, controllers: { omniauth_callbacks: 'accounts/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :like_post   
  resources :posts, only: [:new,:show,:create]
  resources :comments, only: [:create]
  post "follow/account" => "accounts#follow_account", as: :follow_account
  post "unfollow/account" => "accounts#unfollow_account", as: :unfollow_account
  root to: "public#homepage"

  get "followers/:username" => "accounts#show_followers", as: :show_followers
  get "following/:username" => "accounts#show_following", as: :show_following

end
