Rails.application.routes.draw do
  root 'resumes#default'
  resources :resumes, except: [:index] do
    root to: 'resumes#default'
  end
  get '/resumes_index', to: 'resumes#index'
end
