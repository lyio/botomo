Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
resources :books

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
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      get 'books' => 'books#index'
      post 'books' => 'books#create'

      get 'goodreads' => 'goodreads#search'
    end
  end

  # CORS
#  match '*path', via: [:options], to:  lambda {|_| [204, {
#    'Access-Control-Allow-Headers' => "Accept, Content-Type",
#    'Access-Control-Allow-Origin' => "http://localhost:8088",
#    'Access-Control-Allow-Credentials' => 'true',
#    'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS',
#    'Content-Type' => 'text/plain'}, []]}
end
