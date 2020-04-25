Rails.application.routes.draw do

  resources :cocktails, only:[ :index, :new, :create, :show, :destroy] do
    resources :doses, only: [ :new, :create]
  end

  delete "doses/:id", to: "doses#destroy"

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
