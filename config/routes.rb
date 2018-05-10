Rails.application.routes.draw do
  # get 'pages/home' #this url is  to left is removed
  root to: "pages#home"
  namespace :api, defaults: {format: :json} do
    resources :quotes, only: [ :show, :create ]
  end
end
