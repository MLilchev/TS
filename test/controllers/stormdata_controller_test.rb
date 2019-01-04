require 'test_helper'

class StormdataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stormdata_index_url
    assert_response :success
  end

end
