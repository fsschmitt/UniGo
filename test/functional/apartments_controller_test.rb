require 'test_helper'

class ApartmentsControllerTest < ActionController::TestCase
  setup do
    @apartment = apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post :create, :apartment => { :creator => @apartment.creator, :description => @apartment.description, :electricity => @apartment.electricity, :internet => @apartment.internet, :max_price => @apartment.max_price, :min_price => @apartment.min_price, :n_available => @apartment.n_available, :preference => @apartment.preference, :size => @apartment.size, :television => @apartment.television, :title => @apartment.title, :type => @apartment.type, :water => @apartment.water, :zone => @apartment.zone }
    end

    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should show apartment" do
    get :show, :id => @apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @apartment
    assert_response :success
  end

  test "should update apartment" do
    put :update, :id => @apartment, :apartment => { :creator => @apartment.creator, :description => @apartment.description, :electricity => @apartment.electricity, :internet => @apartment.internet, :max_price => @apartment.max_price, :min_price => @apartment.min_price, :n_available => @apartment.n_available, :preference => @apartment.preference, :size => @apartment.size, :television => @apartment.television, :title => @apartment.title, :type => @apartment.type, :water => @apartment.water, :zone => @apartment.zone }
    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete :destroy, :id => @apartment
    end

    assert_redirected_to apartments_path
  end
end
