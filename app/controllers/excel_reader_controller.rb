class ExcelReaderController < ApplicationController
  def index
    @data = session.delete(:uploaded_data) || []
  end

  def upload
    uploaded_file = params[:file]
    spreadsheet = Roo::Spreadsheet.open(uploaded_file.path)

    @data = spreadsheet.sheet(0).parse(headers: true)

    # Store data in session to display it after redirect
    session[:uploaded_data] = @data

    redirect_to root_path
  end
end
