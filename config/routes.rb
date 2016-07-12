Rails.application.routes.draw do
  
  resources :profiles
  get 'about' => 'about#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'books#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :books
  resources :authors
  resources :categories
  resources :publishers
  
  
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :users

  

end
