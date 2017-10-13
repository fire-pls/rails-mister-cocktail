Rails.application.routes.draw do
  root "cocktails#index"
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
 resources :doses, only: [ :destroy, :edit, :update ]
 mount Attachinary::Engine => "/attachinary"
end
