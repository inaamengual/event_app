class ApplicationController < ActionController::Base

  def search
    return unless params[:term].present?

    @results = []
  [Company].each do |model|
    @results += model.search(params[:term])
    end
  end

end
