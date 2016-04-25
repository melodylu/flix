Rails.application.routes.draw do

  get "movies" => "movies#index"



# Returning to our objective, when the router receives a GET request for /movies, we want a listing of movie titles to get sent back to the user's browser. The router's role in that process is simply to call some Ruby code we write to handle the request. In Rails parlance, the router calls an action (a Ruby method) that's defined in a controller (a Ruby class). The syntax for adding a route is a bit unorthodox, so here's a reminder of the generic format:

# verb "url" => "name_of_controller#name_of_action"
# The stuff on the left-hand side of the => identifies what the request looks like and the stuff on the right-hand side identifies the code to run to handle that request. We know what the request looks like, but what should we use as the names on the right-hand side?

# Because we want a listing of movies, by convention the name of the controller will be movies and the name of the action will be index. We'll actually create those a bit later, but for now it's enough just to know their names.
# rails generate controller movies
# Note that the generator takes the name of the controller, which by convention should be plural. In this case, we want a controller named "movies".

  ########################
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
