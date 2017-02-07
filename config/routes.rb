Rails.application.routes.draw do
  resources :courses do
    resources :lessons
  end
end
