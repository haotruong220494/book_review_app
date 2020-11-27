class ClientController < ApplicationController
  layout "client"

  def home
  	@posts_slider = Category.cate_show("collection").last.posts
  	@post_new_first = Post.show_post_new_first[0]
  	@post_news = Post.show_post_news
  	@post_views = Post.show_post_views
  end
end
