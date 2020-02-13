require 'test_helper'

class JuegoParametrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @juego_parametro = juego_parametros(:one)
  end

  test "should get index" do
    get juego_parametros_url, as: :json
    assert_response :success
  end

  test "should create juego_parametro" do
    assert_difference('JuegoParametro.count') do
      post juego_parametros_url, params: { juego_parametro: { NumColumna: @juego_parametro.NumColumna, NumFila: @juego_parametro.NumFila, numMinas: @juego_parametro.numMinas } }, as: :json
    end

    assert_response 201
  end

  test "should show juego_parametro" do
    get juego_parametro_url(@juego_parametro), as: :json
    assert_response :success
  end

  test "should update juego_parametro" do
    patch juego_parametro_url(@juego_parametro), params: { juego_parametro: { NumColumna: @juego_parametro.NumColumna, NumFila: @juego_parametro.NumFila, numMinas: @juego_parametro.numMinas } }, as: :json
    assert_response 200
  end

  test "should destroy juego_parametro" do
    assert_difference('JuegoParametro.count', -1) do
      delete juego_parametro_url(@juego_parametro), as: :json
    end

    assert_response 204
  end
end
