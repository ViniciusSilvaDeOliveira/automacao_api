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
end