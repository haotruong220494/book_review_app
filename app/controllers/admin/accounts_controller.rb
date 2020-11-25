class Admin::AccountsController < Admin::BaseController
  before_action :load_account, only: [:edit, :update, :show]

  def index
    @q = Account.ransack params[:q]
    @accounts = @q.result.page(params[:page]).per Settings.per_page.default
  end

  def edit
  end

  def update
    if @account.update_attributes params_category
      flash[:success] = "Update category success!"
      redirect_to admin_accounts_path
    else
      render "edit"
    end
  end

  def destroy
    Account.find_by_id(params[:id].delete("^0-9").to_i).destroy
    flash[:success] = "Delete category Success."
    redirect_to admin_accounts_path
  end

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge_later
    redirect_back(fallback_location: request.referer)
  end

  private
  def load_account
    @account = Account.find_by_id params[:id]
  end

  def params_category
    params.require(:account).permit Account::ATTRS
  end
end
