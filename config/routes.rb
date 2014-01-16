Teste::Application.routes.draw do

  devise_for :clients
  
  get "carts/checkout", to:"carts#checkout"
  
  get "checkout/:id", to: "line_items#checkout", as: "checkout"
  post "notifications", to: "notifications#create", as: "notifications"
  get "processing", to: "line_items#processing", as: "processing"
  
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get "sessions/create"
  get "sessions/destroy"
  resources :users
  resources :orders
  resources :line_items
  resources :carts

  get "store/index"
  resources :products do
    get :who_bought, on: :member
  end
  
  
  root 'store#index', as: 'store'

end
