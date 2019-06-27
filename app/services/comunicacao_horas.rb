class ComunicacaoHoras
    require 'net/http'
    require 'json' 
    require 'time'

    def buscar_horas(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{@cidade},BR&APPID=b3338227dd5c58654213649658c0d76e&units=metric"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        resultado = []

        retorno["list"].each do |horario|
            resposta << {Hora: Time.at(horario["dt"]),
            Clima: horario["clouds"]["all"],
            Temperatura: horario["main"]["temp"],
            Temperatura_Minima: horario["main"]["temp_min"],
            Temperatura_Maxima: horario["main"]["temp_max"],
            Descrição: horario["weather"][0]["description"],
            Pressão: horario["main"]["pressure"],
            Humidade: horario["main"]["humidity"],
            Vento: horario["wind"]["speed"]
            }
        end

        resposta

    end

end