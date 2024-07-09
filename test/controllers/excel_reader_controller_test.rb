require "test_helper"

class ExcelReaderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get excel_reader_index_url
    assert_response :success
  end

  test "should get upload" do
    get excel_reader_upload_url
    assert_response :success
  end
end
