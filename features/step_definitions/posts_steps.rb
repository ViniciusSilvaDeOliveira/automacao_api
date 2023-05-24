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

E ('realizo a pesquisa desse posts') do 
    @idPosts = @request['id']
    @response = criacao_posts.busca_posts(@idPosts)
end

Entao ('recebi a confirmacao de pesquisa do posts') do 
    aggregate_failures do
        expect(@response.code).to eql(200)
        #binding.pry
    end
end

E ('realizo a alteracao do posts') do
    @idPosts = @request['id']
    @body = commons_class.retorna_body_posts('posts', @idUsuario)
    @response = criacao_posts.altera_posts(@idPosts, @body)
end

Entao ('recebi a confirmacao de alteracao do posts') do 
    aggregate_failures do
        expect(@response.code).to eql(200)
        expect(@response['title']).not_to eql(@dadosPosts['title'])
    end
end