Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "categories#index"

  resources :categories do
    resources :products 
    collection do 
      get :sorting
      get :clear_sorting
      post :send_email
      get :new_email
      get :localiz

    end
  end

end
