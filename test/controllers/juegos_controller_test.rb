require 'test_helper'

class JuegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @juego = juegos(:one)
  end

  test "should get index" do
    get juegos_url, as: :json
    assert_response :success
  end

  test "should create juego" do
    assert_difference('Juego.count') do
      post juegos_url, params: { juego: { ResultadoJuego: @juego.ResultadoJuego, Usuario: @juego.Usuario, estatusJuego: @juego.estatusJuego } }, as: :json
    end

    assert_response 201
  end

  test "should show juego" do
    get juego_url(@juego), as: :json
    assert_response :success
  end

  test "should update juego" do
    patch juego_url(@juego), params: { juego: { ResultadoJuego: @juego.ResultadoJuego, Usuario: @juego.Usuario, estatusJuego: @juego.estatusJuego } }, as: :json
    assert_response 200
  end

  test "should destroy juego" do
    assert_difference('Juego.count', -1) do
      delete juego_url(@juego), as: :json
    end

    assert_response 204
  end
end
