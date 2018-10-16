Rails.application.routes.draw do
	root 'resumes#show', id: 1
	resources :resumes
end
