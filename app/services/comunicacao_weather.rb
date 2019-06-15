class ComunicacaoWeather

    def buscar(cidade)

        @cidade = cidade

        url = "https://api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&APPID=b3338227dd5c58654213649658c0d76e&units=metric"

        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        cidade = {
            "temperatura": retorno["main"]["temp"]
        }
    end
end