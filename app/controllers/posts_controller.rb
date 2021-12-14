class PostsController < ApplicationController

  def new
    @product = Product.new
  end

  def index
    if params[:word].present?
      @word = params[:word]
      @products = search(@word , Product).page(params[:page]).per(14)
    else
      @products = Product.page(params[:page]).per(14).order("#{sort_column} #{sort_direction}")
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_product_path(@product), notice: "商品を登録しました。"
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admin_product_path(params[:id]), notice:"商品情報を更新しました。"
    else
      render :edit
    end
  end


private

    def product_params
      params.require(:product).permit(:image, :name, :introduction, :price, :is_active, :genre_id)
    end
end
