Rails.application.routes.draw do
  resources :assignments do
  	resources :problems
  end
  root 'assignments#index'
end
