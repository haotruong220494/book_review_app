Rails.application.routes.draw do
  get 'errors/file_not_found'
  get 'errors/unprocessable'
  get 'errors/internal_server_error'
  mount Ckeditor::Engine => "/ckeditor"
  namespace :admin do
    devise_for :admins, path: "", path_names: { sign_in: "login", sign_out: "logout" },
      skip: [:registrations, :passwords]
    root "dashboards#index"
    resources :categories do
      member do
        delete :delete_image_attachment
      end
    end
  end

  root "client#home"
  resources :categories, only: :show, param: :slug

  match "/404", to: "errors#file_not_found", via: :all
  match "/422", to: "errors#unprocessable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
