Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get 'system' => 'system#index'
  get '/system/pilot' => 'system/pilot#index'
  post '/system/pilot/create' => 'system/pilot#create'
  get '/system/pilot/edit/:id' => 'system/pilot#edit'
  patch '/system/pilot/update/:id' => 'system/pilot#update'
  delete '/system/pilot/delete/:id' => 'system/pilot#delete'
  get '/system/pilot/deactivate_token/:id' => 'system/pilot#deactivate_token'
  post '/system/set_config_val/:id' => 'system#set_config_val'
  get '/system/shutdown' => 'system#shutdown'

  get 'system/soundfile' => 'system/soundfile#index'
  patch 'system/soundfile/:id' => 'system/soundfile#update'

  get '/system/stop_race_session' => 'system#stop_race_session'
  post '/system/start_race_session' => 'system#start_race_session'

  patch 'system/update_style' => 'system#update_style'

  post 'api/v1/lap_track' => 'api/v1/lap_track#create'
  get 'api/v1/lap_track/create' => 'api/v1/lap_track#create'
  get 'api/v1/monitor' => 'api/v1/monitor#index'

  get 'api/v1/race_session/new' => 'api/v1/race_session#new'

  get '/monitor' => 'monitor#index'
  get '/monitor/view' => 'monitor#view'

  get '/pilots' => 'pilots#index'
  get '/pilots/:id/laps' => 'pilots#laps'

  get '/history' =>  'history#index'
  get '/history/show/:id' =>  'history#show'

  root 'monitor#index'

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
