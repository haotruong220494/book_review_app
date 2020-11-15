set :stage, :production
set :rails_env, :production
set :branch, "main"
set :deploy_to, "/home/haotruong/deploy/book_review_app"
server "52.77.41.179", :user => "haotruong", :roles => %w(app db web)
