Rails.application.routes.draw do
  resources :courses do
    resources :weeks, :except =>[:index]
  end
  resources :weeks, :only => [] do
    resources :lessons, :except => [:index]
  end
end
