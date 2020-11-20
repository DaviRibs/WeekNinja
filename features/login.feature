            #language: pt

            Funcionalidade: Login
            Sendo um usuário previamente cadastrado
            Quero acessar o sistema com  meu email e senha
            Para que eu possa ter acesso as playlists do Paradify
            
            @smoke
            Cenario: Login do usuário
            Dado que acesso a página login
            Quando submeto minhas credenciais com: "davi@gmail.com" e "q1w2r3"
            Então devo ser redirecionado para a área logada



            Esquema do Cenário: Tentativa de login

            Dado que acesso a página login
            Quando submeto minhas credenciais com: "<email>" e "<senha>"
            Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

            Exemplos:
            | email             | senha  |
            | davi@3242.com.br  | abc123 |
            |                   |        |
            | davi123@gmail.com |        |
            | davi@3242.com.br  |        |