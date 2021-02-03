Rails.application.routes.draw do
  devise_for :members
  devise_for :staffs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  namespace :staffs do
    resource :dashboards, only: [:show]
  end

  namespace :members do
    resource :dashboards, only: [:show]
  end
  
end

