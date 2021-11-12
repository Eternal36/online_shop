Rails.application.routes.draw do
  resources :users
  root "categories#index"

  resources :categories do
    resources :products 
    collection do 
      get :sorting
      get :clear_sorting
      post :send_email
      get :new_email

    end
  end

end
