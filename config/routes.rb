Rails.application.routes.draw do

	resources :illustrations
	
  root 'welcome#index'
end
