class SearchesController < ApplicationController

  def create
    @results = []

    [InventoryItem, Company].each do |model|
      @results += model.search(
        term:     params[:term],
        category: (params[:category] || {}).keys
      )
    end

    render :show
  end

end
