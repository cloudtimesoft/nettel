Rails.application.routes.draw do

  resources :sidecontents

  resources :sidecomments

  resources :sidemessages

  resources :sideadvers

  resources :sideclas

  resources :sidesettings

  resources :advertisements

  resources :rechargeable_records

  resources :pubs

  get 'login/index'

  resources :role_auth_refs

  resources :admin_role_refs

  resources :tariff_standards do
  get 'check', on: :collection
  get 'daydefault', on: :collection
end



  resources :time_charges

  resources :basic_charges

  resources :roles do
    delete 'destroy_multiple', on: :collection
  end

  resources :auths

  resources :cfgs

  resources :area_code_details

  resources :provinces

  resources :users

  resources :contacts

  resources :phone_nums

  resources :records

  resources :call_caches

  resources :admins do
    delete 'destroy_multiple', on: :collection
    get 'chkrpt', on: :collection
  end

  resources :make_cards

  resources :rechargeable_cards


  post 'rechargeable_cards/makecard'

  #get 'admins/chkrpt'

  resources :logins


  resources :ctsinits

  resources :sides
    get 'sides/news'




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
