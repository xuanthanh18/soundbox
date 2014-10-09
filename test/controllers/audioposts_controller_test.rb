require 'test_helper'

class AudiopostsControllerTest < ActionController::TestCase
  setup do
    @audiopost = audioposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audioposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audiopost" do
    assert_difference('Audiopost.count') do
      post :create, audiopost: {  }
    end

    assert_redirected_to audiopost_path(assigns(:audiopost))
  end

  test "should show audiopost" do
    get :show, id: @audiopost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audiopost
    assert_response :success
  end

  test "should update audiopost" do
    patch :update, id: @audiopost, audiopost: {  }
    assert_redirected_to audiopost_path(assigns(:audiopost))
  end

  test "should destroy audiopost" do
    assert_difference('Audiopost.count', -1) do
      delete :destroy, id: @audiopost
    end

    assert_redirected_to audioposts_path
  end
end
