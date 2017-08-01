Rails.application.routes.draw do

  #用户路由----------
  devise_for :users

  #前台专辑路由----------
  resources :albums

  #后台路由----------
  namespace :admin do

    # 后台专辑路由
    resources :albums
    
  end


  #首页路由----------
  root 'welcome#index'

end
