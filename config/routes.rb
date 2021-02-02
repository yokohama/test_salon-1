Rails.application.routes.draw do
  devise_for :staffs, controllers:{
    sessions:      'staffs/sessions',
    passwords:     'staffs/passwords',
  }
  
  devise_for :members
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'welcome#index'
end
