class CriarUsuario
    def cria_usuario(body)
        request = HTTParty.post(
            'https://gorest.co.in/public/v2/users',
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'},
            :body => body
        )
    end

    def busca_usuario(idUsuario)
        request = HTTParty.get(
            "https://gorest.co.in/public/v2/users/#{idUsuario}",
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'}
        )
    end

    def altera_usuario(idUsuario, body)
        request = HTTParty.put(
            "https://gorest.co.in/public/v2/users/#{idUsuario}",
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'},
            :body => body
        )
    end

    def exclui_usuario(idUsuario)
        request = HTTParty.delete(
            "https://gorest.co.in/public/v2/users/#{idUsuario}",
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'}
        )
    end

    def busca_usuario_por_parametros(gender, status)
        request = HTTParty.get(
            "https://gorest.co.in/public/v2/users?gender=#{gender}&status=#{status}",
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'}
        )
    end
end