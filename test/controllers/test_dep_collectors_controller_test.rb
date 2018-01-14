require 'test_helper'

class TestDepCollectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_dep_collector = test_dep_collectors(:one)
  end

  test "should get index" do
    get test_dep_collectors_url
    assert_response :success
  end

  test "should get new" do
    get new_test_dep_collector_url
    assert_response :success
  end

  test "should create test_dep_collector" do
    assert_difference('TestDepCollector.count') do
      post test_dep_collectors_url, params: { test_dep_collector: { os_name: @test_dep_collector.os_name } }
    end

    assert_redirected_to test_dep_collector_url(TestDepCollector.last)
  end

  test "should show test_dep_collector" do
    get test_dep_collector_url(@test_dep_collector)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_dep_collector_url(@test_dep_collector)
    assert_response :success
  end

  test "should update test_dep_collector" do
    patch test_dep_collector_url(@test_dep_collector), params: { test_dep_collector: { os_name: @test_dep_collector.os_name } }
    assert_redirected_to test_dep_collector_url(@test_dep_collector)
  end

  test "should destroy test_dep_collector" do
    assert_difference('TestDepCollector.count', -1) do
      delete test_dep_collector_url(@test_dep_collector)
    end

    assert_redirected_to test_dep_collectors_url
  end
end
