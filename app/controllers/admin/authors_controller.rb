class Admin::AuthorsController < Admin::BaseController
  before_action :load_author, only: [:edit, :update]

  def index
    @q = Author.ransack params[:q]
    @authors = @q.result.page(params[:page]).per Settings.per_page.default
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new params_author
    if @author.save
      flash[:success] = "Create author success!"
      redirect_to admin_authors_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @author.update_attributes params_author
      flash[:success] = "Update author success!"
      redirect_to admin_authors_path
    else
      render "edit"
    end
  end

  def destroy
    Author.find_by(id: params[:id]).destroy
    flash[:success] = "Delete author Success."
    redirect_to admin_authors_path
  end

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge_later
    redirect_back(fallback_location: request.referer)
  end

  private
  def load_author
    @author = Author.find_by_id(params[:id].delete("^0-9").to_i)
  end

  def params_author
    params.require(:author).permit Author::ATTRS
  end
end
