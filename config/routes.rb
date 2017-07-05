Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
     # nested resources for :new, :create => restaurant id is needed to create a review
   resources :reviews
  end
end
