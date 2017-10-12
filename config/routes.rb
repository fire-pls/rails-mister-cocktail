Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [ :new, :edit, :create, :update ]
  end
 resources :doses, only: [ :destroy ]
end
