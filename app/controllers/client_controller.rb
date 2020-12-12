class ClientController < ApplicationController
  layout "client"

  def home
    # SLIDER
  	@posts_slider = Category.cate_show("collection").last.posts

    # SÁCH HAY MỚI NHẤT
    @post_new_general = Post.order(created_at: :desc).first
    @post_new_nth_general = Post.order(created_at: :desc).offset(1).limit(5)
    @post_new_last_general = Post.order(created_at: :desc).offset(6).limit(5)

    # TUỔI TRẺ
    @posts_youth = Category.cate_show("youth").last.posts.order(created_at: :desc)

    # BÀI VIẾT NỔI BẬT
    @post_highlight = Category.cate_show("highlight").last.posts.order(created_at: :desc).limit(5)

    # TAB
    @categories_tab = Category.cate_show("header")
  end
end
