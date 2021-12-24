Rails.application.routes.draw do
  resources :projects
  resources :reviews
  devise_for :users
  resources :users

    resources :requests do
      resource :proposals, except: :index 
    end
    
  root 'pages#index'
  resources :pages

  get '/myrequests' => 'requests#myrequests'
  get '/feed' => 'requests#feed'

  get '/about_us' => 'pages#about_us'
  get '/terms' => 'pages#terms'
  get '/faqs' => 'pages#faqs'
  get '/categories' => 'pages#category'
  get '/locations' => 'pages#location'
end
