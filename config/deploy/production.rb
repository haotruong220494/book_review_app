set :stage, :production
set :rails_env, :production
set :branch, "main"
set :deploy_to, "/home/haotruong/deploy/book_review_app"
server "13.212.212.215", :user => "haotruong", :roles => %w(app db web)
