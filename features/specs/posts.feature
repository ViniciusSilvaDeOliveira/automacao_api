#language: pt

@criacao_de_posts
Funcionalidade: Criação de posts

    Contexto: Criar um usuário
        * ter a massa de um usuario criado
        * enviar essa massa para o endpoint de criacao
        * buscar o usuario pelo ID

    @posts_posts
    Cenario: criar um posts
        Dado ter a massa de um posts criado
        Quando enviar essa massa posts para o endpoint de criacao
        Entao recebi a confirmacao de inclusao do posts