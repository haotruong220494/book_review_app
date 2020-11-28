class AuthorsController < ApplicationController
  layout "client"

  def show
    @author = Author.find_by_id params[:slug].delete("^0-9").to_i
  end
end
