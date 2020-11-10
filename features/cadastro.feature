#language: pt

Funcionalidade: Cadastro de Usúarios
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas
@happy
Cenario: Cadastro 
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com email:
    |email           | davirb@gmail.com |
    |senha           | q1w2e3           |
    |senha_confirmada| q1w2e3           |
    Então devo ser redirecionado para a área logada

@temp
Cenario: Email não informado
	Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com email:
    |email           |                  |
    |senha           | q1w2e3           |
    |senha_confirmada| q1w2e3           |
    Então devo ver: "Oops! Informe seu email."


    Cenario: Senha não informada
	Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com email:
    |email           |davirb@hotmail.com |
    |senha           |                   |
    |senha_confirmada|                   |
    Então devo ver: "Oops! Informe sua senha."


Cenario: Senha não divergente
	Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com email:
    |email           |davirb@hotmail.com |
    |senha           | q1w2e3            |
    |senha_confirmada| 010405            |
    Então devo ver: "Oops! Senhas não são iguais."



Cenario: Senha não divergente
	Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com email:
    |email           |   |
    |senha           |   |
    |senha_confirmada|   |
    Então devo ver: "Oops! Informe seu email e sua senha."




