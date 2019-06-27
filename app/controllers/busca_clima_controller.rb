class BuscaClimaController < ApplicationController
    require 'net/http'
    require 'json'

    def buscar
        render json: ComunicacaoWeather.new.buscar(cidade_params[:cidade]), status: :ok
    end

    def buscar_horas
        render json: ComunicacaoHoras.new.buscar_horas(cidade_params[:cidade]), status: :ok
    end

    def buscar_dias
        render json: ComunicacaoDias.new.buscar_dias(cidade_params[:cidade]), status: :ok
    end

    private
    def cidade_params
        params.permit(:cidade)
    end
end