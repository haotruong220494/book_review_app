class ClientController < ApplicationController
  layout "client"

  def home
  	@posts_slider = Category.cate_show("collection").last.posts
    @post_new_general = Category.cate_show("general").last.posts.order(created_at: :desc).first
    @post_new_nth_general = Category.cate_show("general").last.posts.order(created_at: :desc).offset(1).limit(5)
    @post_new_last_general = Category.cate_show("general").last.posts.order(created_at: :desc).offset(6).limit(5)
  end
end
