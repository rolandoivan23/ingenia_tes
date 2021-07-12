require "application_system_test_case"

class ProductDiscountPackagesTest < ApplicationSystemTestCase
  setup do
    @product_discount_package = product_discount_packages(:one)
  end

  test "visiting the index" do
    visit product_discount_packages_url
    assert_selector "h1", text: "Product Discount Packages"
  end

  test "creating a Product discount package" do
    visit product_discount_packages_url
    click_on "New Product Discount Package"

    fill_in "Description", with: @product_discount_package.description
    fill_in "Discount percentage", with: @product_discount_package.discount_percentage
    fill_in "Name", with: @product_discount_package.name
    click_on "Create Product discount package"

    assert_text "Product discount package was successfully created"
    click_on "Back"
  end

  test "updating a Product discount package" do
    visit product_discount_packages_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_discount_package.description
    fill_in "Discount percentage", with: @product_discount_package.discount_percentage
    fill_in "Name", with: @product_discount_package.name
    click_on "Update Product discount package"

    assert_text "Product discount package was successfully updated"
    click_on "Back"
  end

  test "destroying a Product discount package" do
    visit product_discount_packages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product discount package was successfully destroyed"
  end
end
