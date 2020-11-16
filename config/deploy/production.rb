set :stage, :production
set :rails_env, :production
set :branch, "main"
set :deploy_to, "/var/www/book_review_app"
server "13.212.1.50", :user => "haotruong", :roles => %w(app db web)
