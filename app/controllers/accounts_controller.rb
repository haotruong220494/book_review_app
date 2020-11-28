class AccountsController < ApplicationController
  layout "client"

  def show
  	@account = Account.find_by_id params[:id]
  	@q = @account.posts.ransack params[:q]
    @posts = @q.result.page(params[:page]).per(Settings.per_page.account)
  end
end
