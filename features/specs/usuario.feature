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

    @delete_id
    Cenario: excluo o usuario criado
        Dado ter a massa de um usuario criado
        Quando enviar essa massa para o endpoint de criacao
        E realizo a exclusao desse usuario
        Entao valido que o usuario foi excluido

    @cenarios_negativos
    Esquema do Cenario: cenarios negativos para novos usuários
        Dado ter a massa de um usuario invalido <cenario>
        Quando enviar essa massa para o endpoint de criacao
        Entao valido a mensagem de erro <cenario>
        Exemplos: 
            | cenario  | 
            | "email"  | 
            | "name"   |
            | "gender" |
            | "status" |

    @get_todos_usuarios
    Cenario: filtrar usuarios por parametros
        Dado que realizo a busca de todos os usuarios por parametro <gender>
        Entao valido a busca por parametros <gender>
        Exemplos:
            | gender   | 
            | "male"   |
            | "female" |