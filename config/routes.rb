Chattytree::Application.routes.draw do
  get "groupon/index"
  get "groupon/abbotsford"
  get "groupon/abilene"
  get "groupon/akron_canton"
  get "groupon/albany_capital_region"
  get "groupon/albuquerque"
  get "groupon/allentown_reading"
  get "groupon/amarillo"
  get "groupon/anchorage"
  get "groupon/ann_arbor"
  get "groupon/appleton"
  get "groupon/asheville"
  get "groupon/athens_ga"
  get "groupon/atlanta"
  get "groupon/augusta"
  get "groupon/austin"
  get "groupon/chicago"
  get "groupon/los_angeles"  
  get "groupon/phoenix"
  get "groupon/miami"
  
  get "woot/index"

  get "home/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"
  root :controller => 'home', :action => 'index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
