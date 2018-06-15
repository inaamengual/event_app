class InventoryItemsController < ApplicationController

  def show
    @item_rental = ItemRental.new
    @inventory_item = InventoryItem.find(params[:id])
  end

  def index
    @inventory_item = InventoryItem.all
  end

  def new
    @inventory_item = current_company.inventory_items.build
  end

  def create
    @inventory_item = current_company.inventory_items.build(inventory_item_params)
    if @inventory_item.save
      redirect_to @inventory_item
    else
      render :new
    end
  end

  def update
    @inventory_item = InventoryItem.find(params[:id])
    if @inventory_item.update(inventory_item_params)
      redirect_to @inventory_item

    end
  end


  private

  def inventory_item_params
    params.require(:inventory_item).permit(:name, :quantity, :price, category: [], subcategory: [])
  end

end
