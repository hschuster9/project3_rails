Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#   resources :people
#   resources :activities
#   resources :messages
# end

resources :activities do
    resources :people
  end

  resources :people do
    resources :messages
  end
end
