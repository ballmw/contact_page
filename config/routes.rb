ContactPage::Application.routes.draw do
  

  get "api/angular/form/:token" => "Api#angular_form"
  get "api/ember/form/:token" => "Api#ember_form"

  post "api/form" => "Api#contact_form_post"

  get "api/angular/js/controller.js" => "Api#angular_controller"
  get "api/ember/js/controller.js" => "Api#ember_controller"

  get "api/js/loader.js" => "Api#loader"

  #unused
  get "api/test" => "Api#contact_form_test"

  #OPTIONS tag for CORS
  resources :api, :only=>[:create]
  match '/api/angular/form/:token', :controller => 'Api', :action => 'angular_form', :constraints => {:method => 'OPTIONS'}
  match '/api/ember/form/:token', :controller => 'Api', :action => 'ember_form', :constraints => {:method => 'OPTIONS'}
  match '/api/form', :controller => 'Api', :action => 'contact_form_options', :constraints => {:method => 'OPTIONS'}

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
