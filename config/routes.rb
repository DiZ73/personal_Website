Rails.application.routes.draw do
  resources :posts
  resources :home
  resources :info

  root 'home#index', page: 'home'
  get "/:page" => "home#show", :as => 'home_page'
  get "/:page" => "info#show", :as => 'info_page'
  get "/info/:id" => "info#show_pdf", :as => 'resume_page'

end
