class DocumentsController < ApplicationController
  include CheckUserLogin

  def create
    @document = Document.new
    @document.file_name = params[:file] || params[:upload_file]
    @document.user_id = current_user.id

    if params[:file].present?
      @document.document_name = params[:file].original_filename
    else
      @document.document_name = params[:upload_file].original_filename
    end

    respond_to do |format|
      if @document.save
        format.json {render json: { id:@document.id,:file_path=> @document.file_name.url }}
      else
        format.json { render :json => { :error => @document.errors.messages }, status: :unprocessable_entity }
      end
    end
  end

  private

  def document_params
    params.permit(:document,:upload_file,:original_filename,:document_name)
  end
end
