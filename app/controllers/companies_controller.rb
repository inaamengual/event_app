class CompaniesController < ApplicationController

  def show
    @company = current_company || Company.find(params[:id])
  end

  def index
    @companies = Company.all
  end

  def edit
    @company = current_company || Company.find(params[:id])

  end

  def update

  end

  def search
    return unless params[:term].present?

    @results = []
    [Artist, Album, Label].each do |model|
    @results += model.search(params[:term])
    end
  end

end
