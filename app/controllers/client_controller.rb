class ClientController < ApplicationController
  layout "client"

  def home
  	@posts_slider = Category.cate_show("collection").last.posts
  	@post_new_first = Post.show_post_new_first[0]
  	@post_news = Post.show_post_news
  	@post_views = Post.show_post_views
  	@posts_selective_first = Category.cate_show("selective").last.posts.limit(4)
  	@posts_selective_last = Category.cate_show("selective").last.posts.offset(4)
  	@posts_classic_first = Category.cate_show("classic").last.posts.limit(5)
  	@posts_classic_nth_child = Category.cate_show("classic").last.posts.offset(5).limit(7)
  	@posts_classic_last = Category.cate_show("classic").last.posts.offset(12).limit(7)
    @posts_youth = Category.cate_show("youth").last.posts.limit(10)
    @posts_youth_slick = Category.cate_show("youth").last.posts.offset(10)
  end
end
