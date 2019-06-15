class ComunicacaoWeather

    def buscar(cidade)

        @cidade = cidade

        url = "https://api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&APPID=b3338227dd5c58654213649658c0d76e&units=metric"

        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        cidade = {
            "Temperatura": retorno["main"]["temp"],
            "Temperatura minima": retorno["main"]["temp_min"],
            "Temperatura maxima": retorno["main"]["temp_max"],
            "Pressão do ar": retorno["main"]["pressure"],
            "Umidade": retorno["main"]["humidity"]
        }
    end
end