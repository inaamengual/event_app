class ImagesController < ApplicationController

  def destroy
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.destroy
    if current_company
      redirect_to edit_company_registration_path
    end
  end

end
