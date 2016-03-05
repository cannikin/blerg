Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  controller :sessions do
    get  'login'  => :new
    post 'login'  => :create
    get  'logout' => :destroy
  end
  root :to => 'posts#index'
end
