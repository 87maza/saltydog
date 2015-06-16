
Rails.application.routes.draw do
  # root 'posts#index'
  get 'posts/index' => 'posts#index', as: :posts
  get 'posts/new' => 'posts#new', as: :new_post
  post 'posts/'=> 'posts#create', as: :create_post
  get "posts/:id/edit" => "posts#edit", as: :edit_post
  patch "posts/:id/edit" => "posts#update", as: :update_posts
  put "posts/:id/edit" => "posts#update", as: :post
  delete "posts/:id" => "posts#destroy", as: :destroy_posts
  get 'posts/by_user' => "posts#by_user", as: :post_by_user
  get "/posts/:id" => "posts#show", as: :show_post

  post "/posts/:id/comments" => "comments#create", as: :create_comment

  root 'actions#welcome'
  get '/welcome' => 'actions#welcome', as: :actions
  post '/welcome' => 'actions#welcome'

  get 'users/index' => 'users#index', as: :users
  get 'users/new' => 'users#new', as: :new_user
  post '/' => 'users#create', as: :create_user

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session
 get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  get 'photos/index' => 'photos#index', as: :photos
  get 'photos/new' => 'photos#new', as: :new_photos
  post 'photos/index' => 'photos#create', as: :create_photo

  get "/photos/:id" => "photos#show", as: :show_photo
  # resources :posts
  # resources :photos
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


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
