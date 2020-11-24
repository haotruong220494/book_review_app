set :stage, :production
set :rails_env, :production
set :branch, "main"
set :deploy_to, "/var/www/book_review_app"
server "18.138.125.156", :user => "haotruong", :roles => %w(app db web)
