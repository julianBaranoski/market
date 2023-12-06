# app/controllers/items_controller.rb
class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]

  def mark_as_purchased
    @item = Item.find(params[:id])
    @item.update(purchased: true)
    redirect_to items_path, notice: 'Item marked as purchased.'
  end

  def mark_as_not_purchased
    @item = Item.find(params[:id])
    @item.update(purchased: false)
    redirect_to items_path, notice: 'Item marked as not purchased.'
  end

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
    @categories = Category.all
  end

  def create
    @item = Item.new(item_params)

    quantity = params[:item][:quantity].to_i
    price = params[:item][:price].to_f
    @item.total_value = quantity * price

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    @categories = Category.all

    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :quantity, :price, :category_id)
  end
  

  
end
