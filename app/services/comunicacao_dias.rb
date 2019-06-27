class BuscaDias
    require 'net/http'
    require 'json' 
    require 'time'

    def buscar_CincoDias(cidade)

        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{@cidade},BR&APPID=7fe5a0bcd8c43fe22e389436e4f73f1f"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        resposta = []

        retorno["list"].each do |horario|
            resposta << {Hora: Time.at(horario["dt"]),
            Clima: horario["clouds"]["all"],
            Descrição: horario["weather"][0]["description"],
            Temperatura: horario["main"]["temp"],
            Temperatura_Minima: horario["main"]["temp_min"],
            Temperatura_Maxima: horario["main"]["temp_max"],
            Pressão: horario["main"]["pressure"],
            Humidade: horario["main"]["humidity"],
            Vento: horario["wind"]["speed"]
            }
        end

        resposta


    end

end