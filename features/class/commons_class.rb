class CommonsClass
    def carrega_arquivo_massa(arquivo)
        arquivo_massa = File.read("#{Dir.pwd}/features/support/data/#{arquivo}.json")
        JSON.parse(arquivo_massa)
    end

    def retorna_body(body, parametro = nil)
        massa = carrega_arquivo_massa(body)
        #massa(nome, email, genero, status)
        massa["name"] = Faker::Name.name unless parametro.eql?("name")
        massa["email"] = Faker::Internet.email unless parametro.eql?("email")
        massa.delete(parametro) unless parametro.eql?(nil)

        return massa
    end

    def retorna_body_posts(body, idUsuario, parametro = nil)
        massa = carrega_arquivo_massa(body)
        massa["user_id"] = idUsuario
        massa["title"] = Faker::Movie.title unless parametro.eql?("title")
        massa["body"] = Faker::Quote.matz unless parametro.eql?("body")
        massa.delete(parametro) unless parametro.eql?(nil)
        
        return massa
    end
end