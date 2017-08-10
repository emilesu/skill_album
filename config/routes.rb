Rails.application.routes.draw do

  #用户路由----------
  devise_for :users

  #前台专辑-文章路由----------
  resources :albums do
    member do
      post :like
      post :unlike
    end
    resources :articles
    resources :reviews
  end

  #后台路由----------
  namespace :admin do

    # 后台专辑-文章路由
    resources :albums do
      resources :articles
    end

  end


  #首页路由----------
  root 'welcome#index'

end
