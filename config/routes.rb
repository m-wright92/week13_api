Rails.application.routes.draw do
  resources :species do
    resources :pets
  end
end
