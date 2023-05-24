class CriarPosts
    def cria_posts(body)
        request = HTTParty.post(
            'https://gorest.co.in/public/v2/posts',
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'}, 
            :body => body
        )
    end

    def busca_posts(idPosts)
        request = HTTParty.get(
            "https://gorest.co.in/public/v2/posts/#{idPosts}",
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'}
        )
    end

    def altera_posts(idPosts, body)
        request = HTTParty.put(
            "https://gorest.co.in/public/v2/posts/#{idPosts}",
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'}, 
            :body => body
        )
    end

    def excluir_posts(idPosts)
        request = HTTParty.delete(
            "https://gorest.co.in/public/v2/posts/#{idPosts}",
            :headers => {'Authorization' => 'Bearer ab6bd7f947aebad9833f4375950a66d8f6d2b49b7eabfebda8cc198605bc303e'},
        )
    end
end