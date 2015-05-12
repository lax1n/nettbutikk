Rails.application.routes.draw do


  #Routing subdomains
  match 'index', to: 'home#shop', constraints: {subdomain: /.+/}, via: [:get, :post, :put, :patch, :delete]

  require 'subdomain'
  constraints(Subdomain) do
    get '/' => 'shop#index'
    get 'category' => 'shop#category'
    get 'product' => 'shop#product' # change to get 'category/:name'
    get 'admin' => 'shop#admin'
  end



  get 'home/available' => 'home#available?'

  get 'index' => redirect('')
  get 'users' => redirect('')

  devise_for :users
  get ':username' => 'users#show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  #constraints subdomain: /.+/ do
  #  root :to => 'shop#index'
  #end
  #constraints subdomain: false do
  #  root to: 'home#index'
  #end
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
