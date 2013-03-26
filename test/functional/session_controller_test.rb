require 'test_helper'

class SessionControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_redirected_to login_url

      end

  test "should get destroy" do
    get :destroy
    assert_redirected_to users_url
    
  end
  test "should login" do
    
    dave=users(:one)
    post :create, :name=>dave.name, :password=>'secret'
    assert_redirected_to login_url
    assert_equal dave.id, session[:user_id]
  end
  test "should faild login" do
    dave=users(:one)
    post :create,:name=>dave.name,:password => 'wrong'
    assert_redirected_to login_url
  end
  test "should logout" do
    delete :destroy
    assert_redirected_to store_url
  end
end
