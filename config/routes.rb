Rails.application.routes.draw do
  #get 'store/index'
  #目的是让rails创建store_index_path 和 store_index_url 两个方法以便现有代码（和测试）能继续正常运行
  root 'store#index', as: 'store_index'

  resources :products
  get 'say/hello'

  get 'say/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
