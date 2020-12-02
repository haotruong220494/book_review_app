class PostsController < ApplicationController
  layout "client"

  def index
    @q = Post.ransack params[:q]
    @posts = @q.result.page(params[:page]).per Settings.per_page.default
    @search_key = params[:q][:name_cont]
  end

  def show
    @post = Post.find_by_id params[:slug].delete("^0-9").to_i
  end
end
