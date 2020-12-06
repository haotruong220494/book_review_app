class CategoriesController < ApplicationController
  layout "client"

  def show
    @category = Category.find_by_id params[:slug].delete("^0-9").to_i
    @post_highlight = Category.cate_show("highlight").last.posts.order(created_at: :desc).limit(3)
  end
end
