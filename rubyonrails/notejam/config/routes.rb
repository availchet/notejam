Notejam::Application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'note#list', as: :all_notes

  # Pad urls
  post 'pads/:id/edit' => 'pads#edit'

  get 'pads/:id/delete' => 'pads#delete', as: :delete_pad
  post 'pads/:id/delete' => 'pads#delete'

  get 'pads/create' => 'pads#create', as: :create_pad
  post 'pads/create' => 'pads#create'

  resources :pads, only: [:edit, :show]

  # Note urls
  get 'notes/create' => 'notes#create', as: :create_note
  post 'notes/create' => 'notes#create'

  post 'notes/:id/edit' => 'notes#edit'

  get 'notes/:id/delete' => 'notes#delete', as: :delete_note
  post 'notes/:id/delete' => 'notes#delete'

  resources :notes, only: [:edit, :show]

  # User urls
  get 'signup/' => 'user#signup', as: :signup
  post 'signup/' => 'user#signup'

  get 'signin/' => 'user#signin', as: :signin
  post 'signin/' => 'user#signin'

  get 'settings/' => 'user#settings', as: :settings
  post 'settings/' => 'user#settings'

  get 'signout/' => 'user#signout', as: :signout

  get 'forgot-password/' => 'user#forgot_password', as: :forgot_password
  post 'forgot-password/' => 'user#forgot_password'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
