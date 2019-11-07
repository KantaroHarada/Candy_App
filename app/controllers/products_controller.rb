class ProductsController < ApplicationController
  before_action :admin_user,     only: [:new, :create, :update, :edit, :destroy]

  def new
  end

  def create
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "Updated"
      redirect_to @product
    else
      render 'edit'
    end
  end

  def search
    @basket = Basket.new
    @products = Product.all
    @products = Product.where("p_name like ?", "%" + params[:search] +"%") unless params[:search].nil? || params[:search] == ""
    @products = Product.where("genre_id = ?", params[:genre]) unless params[:genre].nil? || params[:genre] == ""
    @products = @products.paginate(page: params[:page])
  end

  def index
    @products = Product.all.paginate(page: params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Product deleted"
    redirect_to product_search_path
  end
end

private
 # 管理者かどうか確認
 def admin_user
  unless current_user.admin 
    flash[:danger]
    redirect_to(root_url) 
end

def product_params
  params.require(:product).permit(:p_name, :p_photo, :p_detail, :stock_id, :genre_id, :manufacturer_id, :cost_id)
end



end
