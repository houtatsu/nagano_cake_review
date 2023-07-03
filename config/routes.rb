Rails.application.routes.draw do
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    root 'homes#top', as: 'root'
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
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
