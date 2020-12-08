class AuthorsController < ApplicationController
  layout "client"

  def show
    @author = Author.find_by_id params[:slug].delete("^0-9").to_i
    @q = @author.posts.ransack params[:q]
    @posts = @q.result.page(params[:page]).per(Settings.per_page.account)

    @post_highlight = Category.cate_show("highlight").last.posts.order(created_at: :desc).limit(5)
  end
end
