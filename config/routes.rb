Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'surveys#index'
    resources :surveys do
    resources :questions
    # resources :questions, except: [:destroy]    <-----------  WIll not allow users to destroy questions----->
    # resources :questions, only: [:index]      <---------  Will allow users to see Question list, but have no CRUD capability ----------->
    end
end
