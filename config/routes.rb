Rails.application.routes.draw do

  # Admin Routes
  #--------------
  get '/admin' => 'main#admin'
  devise_for :admins do
  end

  # resources :classes, :controller=>"lessons"
  resources :lessons, path: 'classes'

  root "main#home"

  get '/' => 'main#home'
  post '/create_email' => 'main#create_email'

  get '/blogs' => 'blogs#index'
  get '/most_recent' => 'blogs#most_recent'
  get '/show/:id' => 'blogs#show'

  post "/create_comment" => "blogs#create_comment"

  get '/about' => 'about#index'
  
  get '/contact' => 'contact#index'

  get '/testimonials' => 'testimonials#index'
  post '/testimonials' => 'testimonials#create'
  post '/testimonials/:id/like' => 'testimonials#like'
  


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
