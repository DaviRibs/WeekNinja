#language: pt

    Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com  meu email e senha
    Para que eu possa ter acesso as playlists do Paradify

Cenario: Login do usuário
    Dado que acesso a página login
    Quando submeto minhas crendencias com: "davi@gmail.com" e "q1w2r3"
    Então devo ser redirecionado para a área logada