require "test_helper"

class ProductDiscountPackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_discount_package = product_discount_packages(:one)
  end

  test "should get index" do
    get product_discount_packages_url
    assert_response :success
  end

  test "should get new" do
    get new_product_discount_package_url
    assert_response :success
  end

  test "should create product_discount_package" do
    assert_difference('ProductDiscountPackage.count') do
      post product_discount_packages_url, params: { product_discount_package: { description: @product_discount_package.description, discount_percentage: @product_discount_package.discount_percentage, name: @product_discount_package.name } }
    end

    assert_redirected_to product_discount_package_url(ProductDiscountPackage.last)
  end

  test "should show product_discount_package" do
    get product_discount_package_url(@product_discount_package)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_discount_package_url(@product_discount_package)
    assert_response :success
  end

  test "should update product_discount_package" do
    patch product_discount_package_url(@product_discount_package), params: { product_discount_package: { description: @product_discount_package.description, discount_percentage: @product_discount_package.discount_percentage, name: @product_discount_package.name } }
    assert_redirected_to product_discount_package_url(@product_discount_package)
  end

  test "should destroy product_discount_package" do
    assert_difference('ProductDiscountPackage.count', -1) do
      delete product_discount_package_url(@product_discount_package)
    end

    assert_redirected_to product_discount_packages_url
  end
end
