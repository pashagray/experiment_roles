Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  
  namespace :investors do
    get :me, to: "welcome#index"
  end

  namespace :debtors do
    get :me, to: "welcome#index"
  end
end
