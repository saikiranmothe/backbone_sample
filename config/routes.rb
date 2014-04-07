Mydocs::Application.routes.draw do
  namespace :api do
   resources :pages
  end
     resources :pages

  root :to => "pages#index"


  devise_for :users
end
