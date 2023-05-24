Dado ('ter a massa de um posts criado') do 
    @dadosPosts = commons_class.retorna_body_posts('posts', @idUsuario)
end

Quando ('enviar essa massa posts para o endpoint de criacao') do
    @request = criacao_posts.cria_posts(@dadosPosts)
    #binding.pry
end

Entao ('recebi a confirmacao de inclusao do posts') do 
    aggregate_failures do
        expect(@request.code).to eql(201)
    end
end