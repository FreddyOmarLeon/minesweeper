class JuegoParametrosController < ApplicationController
  before_action :set_juego_parametro, only: [:show, :update, :destroy]

  # GET /juego_parametros
  def index
    @juego_parametros = JuegoParametro.all

    render json: @juego_parametros
  end

  # GET /juego_parametros/1
  def show
    render json: @juego_parametro
  end

  # POST /juego_parametros
  def create
    @juego_parametro = JuegoParametro.new(juego_parametro_params)

    if @juego_parametro.save
      render json: @juego_parametro, status: :created, location: @juego_parametro
    else
      render json: @juego_parametro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /juego_parametros/1
  def update
    if @juego_parametro.update(juego_parametro_params)
      render json: @juego_parametro
    else
      render json: @juego_parametro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /juego_parametros/1
  def destroy
    @juego_parametro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juego_parametro
      @juego_parametro = JuegoParametro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def juego_parametro_params
      params.require(:juego_parametro).permit(:NumColumna, :NumFila, :numMinas)
    end
end
