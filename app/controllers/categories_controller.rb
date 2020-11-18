class CategoriesController < ApplicationController
  layout "client"

  def show
    @category = Category.find_by_id params[:slug].delete("^0-9").to_i
  end
end
