Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :blogs, only: [:create, :destroy, :show, :update]
  end

  root "static_pages#root"
end

# "api/users" since we will likely need multiple users

