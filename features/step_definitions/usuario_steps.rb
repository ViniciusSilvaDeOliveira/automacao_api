Dado ('ter a massa de um usuario criado') do 
    @body = {
        "name": Faker::Name.name,
        "email": Faker::Internet.email,
        "gender": "male",
        "status": "active"
    }
end

Quando('enviar essa massa para o endpoint de criacao') do
    @request = criacao_usuario.cria_usuario(@body)
end

Entao ('recebi a confirmacao de inclusao do usuario') do 
    expect(@request.code).to eql(201)
end