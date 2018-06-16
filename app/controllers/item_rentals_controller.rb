class ItemRentalsController < ApplicationController

  def show
    @item_rental = ItemRental.find(params[:id])
  end

  def index
    @item_rentals = ItemRental.all
  end

  def new
    @booking_request = BookingRequest.find(params[:id])
    @item_rental = @booking_request.item_rentals.build
  end




  def create

    @item_rental = ItemRental.new(item_rental_params)
    if @item_rental.save
      redirect_to @booking_request
    else
      render :new
    end












  end

  def update
    @item_rental = ItemRental.find(params[:id])
    if @item_rental.update(item_rental_params)
      redirect_to @item_rental

    end
  end


  private

  def item_rental_params
    params.require(:item_rental).permit(:inventory_item_id, :booking_request_id)

  end

end
