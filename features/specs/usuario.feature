#language: pt

@crud_usuario
Funcionalidade: Criação de usuário

    @post_user
    Cenario: Criar um usuário
        Dado ter a massa de um usuario criado
        Quando enviar essa massa para o endpoint de criacao
        Entao recebi a confirmacao de inclusao do usuario

    @get_id
    Cenario: buscar o usuario criado
        Dado ter a massa de um usuario criado
        Quando enviar essa massa para o endpoint de criacao
        E buscar o usuario pelo ID
        Entao valido as informacoes do usuario

    @put_id
    Cenario: alterar o usuario criado
        Dado ter a massa de um usuario criado
        Quando enviar essa massa para o endpoint de criacao
        E realizo a alteracao dos dados do usuario
        Entao valido que os dados foram alterados