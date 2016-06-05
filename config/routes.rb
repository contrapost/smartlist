Rails.application.routes.draw do

  resources :shopping_details
  delete 'shopping_infos/delete_shopping_info'

  post 'shopping_infos/upload_shopping_info'

  get 'budgets/show_budget'

  resources :products

  resources :sales

  resources :favourite_stores

=begin
  resource :user do
    resource :users
  end
=end

  # noinspection RubyResolve
  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks'}

  root 'smartlist_app#dashboard_user'

  get 'dashboard_admin' => 'smartlist_app#dashboard_admin', as: :dashboard_admin

  get 'dashboard_store' => 'smartlist_app#dashboard_store', as: :dashboard_store

  post 'contact_us' => 'smartlist_app#contact_us', as: :contact_us

  get '/show_all_sales', to: 'smartlist_app#show_all_sales'

  # Recipe routes
  get 'recipes/show_recipes'

  get 'recipes/set_recipe_as_active_list'

  get 'recipes/add_recipe_to_active_list'

  delete 'recipes/delete_recipe'

  get 'recipes/delete_product_from_recipe'

  get 'recipes/add_product_to_recipe'

  get 'recipes/edit_recipe'

  get 'recipes/create_recipe'

  get '/show_recipe_constructor', to: 'recipes#show_recipe_constructor'

  post '/register_new_recipe', to: 'recipes#register_new_recipe'

  # FavouriteList routes
  get 'favourite_lists/show_favourite_lists'

  get 'favourite_lists/make_favourite_list_active'

  delete 'favourite_lists/delete_favourite_list'

  get 'favourite_lists/edit_favourite_list'

  post 'favourite_lists/create_favourite_list'

  get '/delete_from_favourite_list', to: 'favourite_lists#delete_from_favourite_list'

  get '/add_to_favourite_list', to: 'favourite_lists#add_to_favourite_list'

  post '/send_list_by_mail', to: 'favourite_lists#send_list_by_mail'

  # Admin routes
  get 'admin/show_users'

  get 'admin/show_stores'

  get 'admin/show_user'

  get 'admin/new_user'

  get 'admin/new_store'

  get 'admin/edit_user'

  post 'admin/create_user'

  post 'admin/update_user'

  delete 'admin/destroy_user'


  # Product routes
  get 'shopping_list' => '/show_all_active_products', to: 'products#show_all_active_products'

  get '/set_as_active', to: 'products#set_as_active'

  get '/set_as_inactive', to: 'products#set_as_inactive'

end
