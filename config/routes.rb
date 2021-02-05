Rails.application.routes.draw do
  devise_for :members, controllers: {
    sessions: 'members/sessions',
    passwords: 'members/passwords',
    registrations: 'members/registrations'
  }
  devise_for :staffs, controllers: {
    sessions: 'staffs/sessions',
    passwords: 'staffs/passwords'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  
  namespace :staffs do
    resource :dashboards, only: [:show]
    resources :members, only: [:index]
  end
  
  namespace :members do
    resource :dashboards, only: [:show]
  end
  
end

