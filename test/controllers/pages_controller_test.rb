require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title", "Home"
  end
  
  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About"
  end
end
