class ImagesController < ApplicationController

  def destroy
    @company        = Company.find_by(id: params[:company_id])
    @inventory_item = InventoryItem.find_by(id: params[:inventory_item_id])
    if @company
      redirect_to root_path and return unless current_company == @company
      @company.images.find(params[:id]).destroy
      redirect_to edit_company_registration_path(@company)
    elsif @inventory_item
      redirect_to root_path and return unless @inventory_item.company == current_company
      @inventory_item.images.find(params[:id]).destroy
      redirect_to edit_inventory_item_path(@inventory_item)
    end
  end

end
