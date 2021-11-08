Rails.application.routes.draw do
  root "categories#index"

  resources :categories do
    resources :products 
    collection do 
      get :sorting
      get :clear_sorting
      get :sorting_prod
      get :clear_sorting_prod
    end
  end

end
