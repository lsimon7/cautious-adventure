<<<<<<< HEAD
#---
# Excerpted from "Agile Web Development with Rails 5",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails5 for more book information.
#---
=======
>>>>>>> 647f2c7bdb7619a5243d0216033aa53c81b523bd
require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @update = {
<<<<<<< HEAD
      title:       'Lorem Ipsum',
      description: 'Wibbles are fun!',
      image_url:   'lorem.jpg',
      price:       19.95
=======
      title:    'Lorem Ipsum',
      description:    'Wibbles are fun!',
      image_url:    'lorem.jpg',
      price:    19.95
>>>>>>> 647f2c7bdb7619a5243d0216033aa53c81b523bd
    }
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
<<<<<<< HEAD
      post products_url, params: { product: @update }
=======
      post products_url, params: { product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
>>>>>>> 647f2c7bdb7619a5243d0216033aa53c81b523bd
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
<<<<<<< HEAD
    patch product_url(@product), params: { product: @update }
    assert_redirected_to product_url(@product)
  end

  test "can't delete product in cart" do
    assert_difference('Product.count', 0) do
      delete product_url(products(:two))
    end

    assert_redirected_to products_url
  end

=======
    patch product_url(@product), params: { product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
    assert_redirected_to product_url(@product)
  end

>>>>>>> 647f2c7bdb7619a5243d0216033aa53c81b523bd
  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
