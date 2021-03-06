Rails.application.routes.draw do
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
    resources :posts do
      member do
        delete :delete_image_attachment
      end
    end
    resources :accounts do
      member do
        delete :delete_image_attachment
      end
    end
    resources :authors do
      member do
        delete :delete_image_attachment
      end
    end
  end

  devise_for :accounts, controllers: {omniauth_callbacks: "accounts/omniauth_callbacks"}
  resources :accounts, only: :show
  resources :authors, only: :show, param: :slug
  resources :categories, only: :show, param: :slug
  resources :posts, only: [:show, :index], param: :slug

  root "client#home"
  get "/faq", to: "faqs#faq"
  get "/about-us", to: "abouts#about_us"
  get "/sitemap.xml", to: "sitemap#index", defaults: {format: "xml"}
  get "/robots.txt", to: "robots_txts#index"
  match "/404", to: "errors#file_not_found", via: :all
  match "/422", to: "errors#unprocessable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
