Rails.application.routes.draw do

  resources :sales
  get 'admin/show_users'

  get 'admin/show_stores'

  get 'admin/show_user'

  get 'admin/show_store'

  get 'admin/new_user'

  get 'admin/new_store'

  get 'admin/edit_user'

  get 'admin/edit_store'

  get 'admin/create_user'

  get 'admin/create_store'

  get 'admin/update_user'

  get 'admin/update_store'

  # delete 'admin/destroy_user'

  get 'admin/destroy_store'

  match 'users/:id' => 'admin#destroy_user', :via => :delete, :as => :admin_destroy_user

  resources :favourite_stores
  # noinspection RubyResolve
  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks'}

  root 'smartlist_app#dashboard_user'

  get 'dashboard_admin' => 'smartlist_app#dashboard_admin', as: :dashboard_admin

  get 'dashboard_store' => 'smartlist_app#dashboard_store', as: :dashboard_store

  get 'contact_us' => 'smartlist_app#contact_us', as: :contact_us

  # get 'dashboard' => 'smartlist_app#dashboard_user', as: :dashboard

  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

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
