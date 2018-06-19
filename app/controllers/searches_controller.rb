class SearchesController < ApplicationController

  def create
    @results = []
    [Company, InventoryItem].each do |model|
      @results += model.search(params[:term])
    end
    render :show


  end

end
