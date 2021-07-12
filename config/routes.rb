Rails.application.routes.draw do
  resources :contact_forms
  resources :product_discount_packages
  resources :products
  resources :product_types
  get 'main/home'
  get 'main/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
