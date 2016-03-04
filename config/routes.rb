Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  resources :session, :only => [:new, :create, :destroy]

  root :to => 'posts#index'
end
