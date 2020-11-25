class Admin::DashboardsController < Admin::BaseController
  def index
    @q = Account.ransack params[:q]
    @accounts = @q.result.page(params[:page]).per(Settings.per_page.default)
  end
end
