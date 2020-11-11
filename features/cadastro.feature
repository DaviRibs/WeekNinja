#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | davirb@gmail.com  |
            | senha          | q1w2r3            |
            | senha_confirma | q1w2r3            |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
        | email                | senha  | confirma_senha | mensagem_saida                       |
        |                      | q1w2r3 | q1w2r3         | Oops! Informe seu email.             |
        | davirb@hotmail.com   |        |                | Oops! Informe sua senha.             |
        | davirb@hotmail.com   | q1w2r3 | adsbd3         | Oops! Senhas não são iguais.         |
        |                      |        |                | Oops! Informe seu email e sua senha. |

