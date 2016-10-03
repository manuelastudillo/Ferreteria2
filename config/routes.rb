Rails.application.routes.draw do




  resources :facturas
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'bienvenido#index'

  get 'clientes/', to: 'clientes#index', as: 'clientes'
  get 'clientes/nuevo', as: 'nuevo_cliente'
  post 'clientes/', to: 'clientes#crear'
  get 'clientes/:id/editar', to: 'clientes#editar', as: 'editar_cliente'
  get 'clientes/:id', to: 'clientes#mostrar', as: 'cliente'
  put 'clientes/:id',to: 'clientes#update'
  patch 'clientes/:id' ,to: 'clientes#update'
  delete 'clientes/:id', to: 'clientes#eliminar'
  

  get 'categorias/', to: 'categorias#index', as: 'categorias'
  get 'categorias/nuevo', as: 'nuevo_categoria'
  post 'categorias/', to: 'categorias#crear'
  get 'categorias/:id/editar', to: 'categorias#editar', as: 'editar_categoria'
  get 'categorias/:id', to: 'categorias#mostrar', as: 'categoria'
  put 'categorias/:id',to: 'categorias#update'
  patch 'categorias/:id' ,to: 'categorias#update'
  delete 'categorias/:id', to: 'categorias#eliminar'

  get 'marcas/', to: 'marcas#index', as: 'marcas'
  get 'marcas/nuevo', as: 'nuevo_marca'
  post 'marcas/', to: 'marcas#crear'
  get 'marcas/:id/editar', to: 'marcas#editar', as: 'editar_marca'
  get 'marcas/:id', to: 'marcas#mostrar', as: 'marca'
  put 'marcas/:id',to: 'marcas#update'
  patch 'marcas/:id' ,to: 'marcas#update'
  delete 'marcas/:id', to: 'marcas#eliminar'

  get 'proveedors/', to: 'proveedors#index', as: 'proveedors'
  get 'proveedors/nuevo', as: 'nuevo_proveedor'
  post 'proveedors/', to: 'proveedors#crear'
  get 'proveedors/:id/editar', to: 'proveedors#editar', as: 'editar_proveedor'
  get 'proveedors/:id', to: 'proveedors#mostrar', as: 'proveedor'
  put 'proveedors/:id',to: 'proveedors#update'
  patch 'proveedors/:id' ,to: 'proveedors#update'
  delete 'proveedors/:id', to: 'proveedors#eliminar'
  
  get 'productos/', to: 'productos#index', as: 'productos'
  get 'productos/nuevo', as: 'nuevo_producto'
  post 'productos/', to: 'productos#crear'
  get 'productos/:id/editar', to: 'productos#editar', as: 'editar_producto'
  get 'productos/:id', to: 'productos#mostrar', as: 'producto'
  put 'productos/:id',to: 'productos#update'
  patch 'productos/:id' ,to: 'productos#update'
  delete 'productos/:id', to: 'productos#eliminar'

  get 'boletas/', to: 'boletas#index', as: 'boletas'
  get 'boletas/nuevo', as: 'nuevo_boleta'
  post 'boletas/', to: 'boletas#crear'
  get 'boletas/:id/editar', to: 'boletas#editar', as: 'editar_boleta'
  get 'boletas/:id', to: 'boletas#mostrar', as: 'boleta'
  put 'boletas/:id',to: 'boletas#update'
  patch 'boletas/:id' ,to: 'boletas#update'
  delete 'boletas/:id', to: 'boletas#eliminar'

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
