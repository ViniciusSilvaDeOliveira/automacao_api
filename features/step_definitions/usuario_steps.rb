Dado ('ter a massa de um usuario criado') do 
    @dadosUsuario = commons_class.retorna_body('usuario')
end

Quando('enviar essa massa para o endpoint de criacao') do
    @request = criacao_usuario.cria_usuario(@dadosUsuario)
end

Entao ('recebi a confirmacao de inclusao do usuario') do 
    aggregate_failures do
        expect(@request.code).to eql(201)
        expect(@request['name']).to eql(@dadosUsuario['name'])
        expect(@request['email']).to eql(@dadosUsuario['email'])
        expect(@request['gender']).to eql('female')
        expect(@request['status']).to eql('active')
    end    
end

E ('buscar o usuario pelo ID') do
    @idUsuario = @request['id']
    @response = criacao_usuario.busca_usuario(@idUsuario)
end

Entao ('valido as informacoes do usuario') do
    aggregate_failures do
        expect(@response.code).to eql(200)
        expect(@response['name']).to eql(@dadosUsuario['name'])
        expect(@response['email']).to eql(@dadosUsuario['email'])
        expect(@response['gender']).to eql('female')
        expect(@response['status']).to eql('active')
    end
end

E ('realizo a alteracao dos dados do usuario') do 
    @idUsuario = @request['id']
    @body = commons_class.retorna_body('usuario')
    @response = criacao_usuario.altera_usuario(@idUsuario, @body)
end

Entao ('valido que os dados foram alterados') do
    aggregate_failures do
        expect(@response.code).to eql(200)
        #binding.pry
        expect(@response['name']).not_to eql(@dadosUsuario['name'])
    end
end

E ('realizo a exclusao desse usuario') do 
    @idUsuario = @request['id']
    @response = criacao_usuario.exclui_usuario(@idUsuario)
end

Entao ('valido que o usuario foi excluido') do
    expect(@response.code).to eql(204)
end

Dado ('que realizo a busca de todos os usuarios por parametro') do 
    @request = criacao_usuario.busca_usuario_por_parametros('male', 'active')
end

Entao ('valido a busca por parametros') do
    binding.pry
    expect(@request.code).to eql(200)
end