class CategoriesController < ApplicationController
  layout "client"

  def show
    @category = Category.find_by_id params[:slug].delete("^0-9").to_i
    @post_highlight = Category.cate_show("highlight").last.posts.order(created_at: :desc).limit(5)

    @q = @category.posts.ransack params[:q]
    @posts = @q.result.page(params[:page]).order(created_at: :desc).per(Settings.per_page.post_in_cate)
  end
end
