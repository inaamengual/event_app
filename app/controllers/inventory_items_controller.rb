class InventoryItemsController < ApplicationController

  def show
    @item_rental = ItemRental.new
    @inventory_item = InventoryItem.find(params[:id])
  end

  def index
    @inventory_item = InventoryItem.all
    @inventory_items = current_company.inventory_items
  end

  def new
    @inventory_item = current_company.inventory_items.build
    @categories     = InventoryItem.categories
  end

  def edit
    @inventory_item = InventoryItem.find(params[:id])
  end

  def create

    @item_rental = ItemRental.new
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

  def destroy
    @inventory_item = InventoryItem.find(params[:id])
    @inventory_item.destroy
    redirect_to @inventory_item
  end



def delete_image_attachment
  @image = ActiveStorage::Blob.find_signed(params[:id])
  @image.purge_later
  redirect_to inventory_item_path(@image.attachments.records.first.record.id)
end


  private

  def inventory_item_params
    params.require(:inventory_item).permit(:name, :quantity, :price, :category, :subcategory, :description, images:[])
  end

end
