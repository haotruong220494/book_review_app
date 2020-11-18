Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  namespace :admin do
    devise_for :admins, :path => "", :path_names => { :sign_in => "login", :sign_out => "logout" },
      :skip => [:registrations, :passwords]
    root "dashboards#index"
    resources :categories
  end

  root "client#home"
  resources :categories, only: :show, param: :slug
end
