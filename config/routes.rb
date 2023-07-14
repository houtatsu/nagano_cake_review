Rails.application.routes.draw do
 # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    root 'homes#top', as: 'root'
    get 'admin/customers', to: 'customers#index', as: 'index'
    get 'admin/customers/:id', to: 'customers#show', as: 'show'
    get 'admin/customers/:id/edit', to: 'customers#edit', as: 'edit'
    patch 'admin/customers/:id', to: 'customers#update', as: 'update'
  end
  
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  namespace :public do
    root 'homes#top', as: 'root'
    get 'homes/about'
    get 'customers/:id/unsubscribe', to: 'customers#unsubscribe', as: 'unsubscribe'
    patch 'customers/:id/withdraw', to: 'customers#withdraw', as: 'withdraw'
    get 'customers/my_page', to: 'customers#show', as: 'my_page'
    get 'customers/infomation/edit', to: 'customers#edit', as: 'edit'
    patch 'customers/infomation', to: 'customers#update', as: 'infomation'
  end
end
