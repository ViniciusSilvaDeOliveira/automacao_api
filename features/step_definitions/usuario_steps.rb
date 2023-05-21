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