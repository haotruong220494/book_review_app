class Admin::DashboardsController < Admin::BaseController
  def index
    @accounts = Account.all
  end
end
