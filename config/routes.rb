ActionController::Routing::Routes.draw do |map|
  
  map.resources :contact
  
  map.root :controller => "welcome"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
