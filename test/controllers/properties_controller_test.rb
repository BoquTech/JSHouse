require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address: @property.address, address_display: @property.address_display, agent_id: @property.agent_id, agent_name: @property.agent_name, bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, building_age: @property.building_age, building_name: @property.building_name, buy: @property.buy, data_source: @property.data_source, date_available: @property.date_available, description: @property.description, district: @property.district, enabled: @property.enabled, family_rooms: @property.family_rooms, features: @property.features, float: @property.float, floor: @property.floor, inclusive_display: @property.inclusive_display, inclusive_govr: @property.inclusive_govr, inclusive_mfee: @property.inclusive_mfee, indoor_size: @property.indoor_size, latitude: @property.latitude, layout: @property.layout, longitude: @property.longitude, outdoor_size: @property.outdoor_size, reception_rooms: @property.reception_rooms, refid: @property.refid, rent: @property.rent, saleable_area: @property.saleable_area, street: @property.street, title: @property.title, user_id: @property.user_id, uuid: @property.uuid, view: @property.view }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { address: @property.address, address_display: @property.address_display, agent_id: @property.agent_id, agent_name: @property.agent_name, bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, building_age: @property.building_age, building_name: @property.building_name, buy: @property.buy, data_source: @property.data_source, date_available: @property.date_available, description: @property.description, district: @property.district, enabled: @property.enabled, family_rooms: @property.family_rooms, features: @property.features, float: @property.float, floor: @property.floor, inclusive_display: @property.inclusive_display, inclusive_govr: @property.inclusive_govr, inclusive_mfee: @property.inclusive_mfee, indoor_size: @property.indoor_size, latitude: @property.latitude, layout: @property.layout, longitude: @property.longitude, outdoor_size: @property.outdoor_size, reception_rooms: @property.reception_rooms, refid: @property.refid, rent: @property.rent, saleable_area: @property.saleable_area, street: @property.street, title: @property.title, user_id: @property.user_id, uuid: @property.uuid, view: @property.view }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
