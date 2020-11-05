Dado('que acesso a página de cadastro') do
        visit "http://parodify.qaninja.com.br/"
        click_on "EXPERIMENTE AGORA"
    end
  
  Quando('submeto o meu cadastro com email:') do |table|
       user = table.rows_hash
       find("input[name*=email]").set user[:email]
       find("input[placeholder='Sua senha secreta']").set user[:senha]
       find("input[placeholder='Confirme a senha']").set user[:senha_confirmada]

       sleep 5 #temporario
    end
  
  Então('devo ser redirecionado para a área logada') do
        pending # Write code here that turns the phrase above into concrete actions
    end