Rails.application.routes.draw do

  namespace :admin do
    resources :menus
  end
  #前端网页控制器。
  namespace :mobile do
    #命名空间默认控制器
    get '', to: 'static_pages#home', as: '/'
    get 'static_pages', to: 'static_pages#home', as: 'static_pages/'
    get 'static_pages/home'
  end


  ##AUTHENTICATION
  namespace :admin do
    #跳转至登录界面；
    get 'logout', to: 'login#logout', as: 'logout/'
    get 'login/logout'

    #跳转至登录界面；
    get 'login', to: 'login#login', as: 'login/'
    get 'login/login'

    #表单提交验证；
    post 'login', to: 'login#signin', as: 'signin/'
    post 'login/signin'

    #跳转至主界面；
    get 'main', to: 'main#index', as: 'main/'
    get 'main/index'
    get '/', to: 'main#index', as: '/'

    resources :users

    resources :channels
  end

  #root 'index.html'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
