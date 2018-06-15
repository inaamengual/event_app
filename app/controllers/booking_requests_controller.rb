class BookingRequestsController < ApplicationController

    def show
      @booking_request = BookingRequest.find(params[:id])
    end

    def index
      @booking_request = BookingRequest.all
    end

    def new
      @booking_request = current_user.booking_requests.build
    end

    def create
      @booking_request = current_user.booking_requests.build(booking_request_params)
      if @booking_request.save
        redirect_to @booking_request
      else
        render :new
      end
    end

    def update
      @booking_request = BookingRequest.find(params[:id])
      if @booking_request.update(booking_request_params)
        redirect_to @booking_request

      end
    end


    private

    def booking_request_params
      params.require(:booking_request).permit(:venue_name, :location, :start_time, :end_time, :comment, :status)
    end


end
