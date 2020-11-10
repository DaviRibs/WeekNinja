      Dado('que acesso a página de cadastro') do
          visit "http://parodify.qaninja.com.br/"
          click_on "EXPERIMENTE AGORA"
      end
  
        Quando('submeto o meu cadastro com email:') do |table|
        user = table.rows_hash

        delorean user[:email]

        find("input[name*=email]").set user[:email]
        find("input[placeholder='Sua senha secreta']").set user[:senha]
        find("input[placeholder='Confirme a senha']").set user[:senha_confirmada]

        click_on 'Cadastrar'
        end
  
        Então('devo ser redirecionado para a área logada') do
        expect(page).to have_css('.dashboard')
        end

      Quando('submeto o meu cadastro sem o email') do
        find("input[placeholder='Sua senha secreta']").set "q1w2e3"
        find("input[placeholder='Confirme a senha']").set "q1w2e3"

        click_on 'Cadastrar'
      end
    
      Então('devo ver Oops! Informe seu email') do
        alert = find(".message p")
        expect(alert.text).to eql 'Oops! Informe seu email.'


      end