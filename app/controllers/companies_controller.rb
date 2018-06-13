class CompaniesController < ApplicationController

  def show
    @company = current_company || Company.find(params[:id])
  end

  def index
    @companies = Company.all
  end

end
