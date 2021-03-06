Rails.application.routes.draw do

  map.root 'intro#landing'

  resources :blogs
  
  # Admin Routes
  #--------------
  devise_for :admins

  authenticated :admin do
    root 'admin#admin_dashboard', as: :authenticated_root
  end
  get '/intro' => 'intro#index'

  get '/admin' => 'admin#admin_main'
  get '/admin_dashboard' => 'admin#admin_dashboard'

  get 'contact/index'
  
  get '/admin_blogs' => 'admin#admin_blogs'
  get '/admin_new_blog' => 'admin#admin_new_blog'
  get '/admin_blog/:id' => 'admin#admin_blog_show'
  patch '/admin_blog/:id' => 'admin#admin_blog_update'
  post '/admin_blog/new' => 'admin#admin_create_blog'
  delete '/admin_blog/:id' => 'admin#admin_delete_blog'

  get '/admin_classes' => 'admin#admin_classes'
  get '/admin_about' => 'admin#admin_about'
  get '/admin_updates_board' => 'admin#admin_updates_board'
  post '/admin_update' => 'admin#admin_new_update'
  get '/admin_gallery' => 'admin#admin_gallery'

  # resources :classes, :controller=>"lessons"
  resources :lessons, path: 'classes'

  get '/' => 'main#home'
  get '/home' => 'main#home'
  post '/create_email' => 'main#create_email'

  get '/blogs' => 'blogs#index'
  get '/most_recent' => 'blogs#most_recent'
  get '/blogs/:id' => 'blogs#show'

  post "/create_comment" => "blogs#create_comment"

  get '/about' => 'about#index'
  
  get '/contact' => 'contact#index'

  get '/class/new' => 'lessons#new'
  
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
