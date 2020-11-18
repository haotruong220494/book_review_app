Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  namespace :admin do
    devise_for :admins, :path => "", :path_names => { :sign_in => "login", :sign_out => "logout" },
      :skip => [:registrations, :passwords]
    root "dashboards#index"
    resources :categories do
      member do
        delete :delete_image_attachment
      end
    end
  end

  root "client#home"
  resources :categories, only: :show, param: :slug
end
