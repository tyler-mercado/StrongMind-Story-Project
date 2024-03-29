require "test_helper"

class PizzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza = pizzas(:one)

    # Toppings are not included as an attribute as those are handled in pizzas/_form.html.erb with checkboxes
    @pizza_attributes = {
      pizza: {
        pizza_name: "Test",
        crust: "Parmesan",
      }
    }
  end

  test "should get index" do
    get pizzas_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_url
    assert_response :success
  end

  test "should create pizza" do
    assert_difference("Pizza.count") do
      post pizzas_url, params: @pizza_attributes
    end

    assert_redirected_to pizza_url(Pizza.last)
  end

  test "should show pizza" do
    get pizza_url(@pizza)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_url(@pizza)
    assert_response :success
  end

  test "should update pizza" do
    patch pizza_url(@pizza), params: { pizza: { crust: @pizza.crust, pizza_name: @pizza.pizza_name, toppings: @pizza.toppings } }
    assert_redirected_to pizza_url(@pizza)
  end

  test "should destroy pizza" do
    assert_difference("Pizza.count", -1) do
      delete pizza_url(@pizza)
    end

    assert_redirected_to pizzas_url
  end
end
