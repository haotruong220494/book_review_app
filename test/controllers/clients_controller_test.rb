require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get clients_home_url
    assert_response :success
  end

end
