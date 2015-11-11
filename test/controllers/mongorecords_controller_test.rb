require 'test_helper'

class MongorecordsControllerTest < ActionController::TestCase
  setup do
    @mongorecord = mongorecords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mongorecords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mongorecord" do
    assert_difference('Mongorecord.count') do
      post :create, mongorecord: {  }
    end

    assert_redirected_to mongorecord_path(assigns(:mongorecord))
  end

  test "should show mongorecord" do
    get :show, id: @mongorecord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mongorecord
    assert_response :success
  end

  test "should update mongorecord" do
    patch :update, id: @mongorecord, mongorecord: {  }
    assert_redirected_to mongorecord_path(assigns(:mongorecord))
  end

  test "should destroy mongorecord" do
    assert_difference('Mongorecord.count', -1) do
      delete :destroy, id: @mongorecord
    end

    assert_redirected_to mongorecords_path
  end
end
