require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get contact_form_test" do
    get :contact_form_test
    assert_response :success
  end

  test "should get contact_form_get" do
    get :contact_form_get
    assert_response :success
  end

  test "should get contact_form_post" do
    get :contact_form_post
    assert_response :success
  end

end
