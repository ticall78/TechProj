ActionController::Routing::Routes.draw do |map|
  map.resources :statuses

  map.resources :suppliers

  map.resources :categories

  map.resources :inventories



  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
   map.root :controller => "categories, suppliers, statuses"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
