Rails.application.routes.draw do
  root 'resumes#show'
  resources :resumes, except: [:index] do
    root to: 'resumes#show'
  end
  get '/resumes_index', to: 'resumes#index'
end
