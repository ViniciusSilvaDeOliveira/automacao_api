#language: pt

@criacao_de_posts
Funcionalidade: Criação de posts

    Contexto: Criar um usuário
        * ter a massa de um usuario criado
        * enviar essa massa para o endpoint de criacao
        * buscar o usuario pelo ID

    @post_posts
    Cenario: criar um posts
        Dado ter a massa de um posts criado
        Quando enviar essa massa posts para o endpoint de criacao
        Entao recebi a confirmacao de inclusao do posts

    @get_posts
    Cenario: pesquisar posts
        Dado ter a massa de um posts criado
        Quando enviar essa massa posts para o endpoint de criacao
        E realizo a pesquisa desse posts
        Entao recebi a confirmacao de pesquisa do posts

    @put_posts
    Cenario: alterar posts
        Dado ter a massa de um posts criado
        Quando enviar essa massa posts para o endpoint de criacao
        E realizo a alteracao do posts
        Entao recebi a confirmacao de alteracao do posts

    @delete_posts
    Cenario: excluir posts
        Dado ter a massa de um posts criado
        Quando enviar essa massa posts para o endpoint de criacao
        E realizo a exclusao desse posts
        Entao recebi a confirmacao de esclusao do posts
        teste