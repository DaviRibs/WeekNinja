    Dado('Login com {string} e {string}') do |email, password|
        visit "http://parodify.qaninja.com.br"
        click_on "Login"
        
        find('#user_email').set email
        find('#user_password').set password
        click_on "Log in"
    end


     Dado('que eu gosto de muito de {string}') do |cat|
        find("a[href='/search/new']").click
        find("img[src$='#{cat.downcase}.png']").click

        sleep 10
    end
    
    Quando('toco a seguinte canção:') do |table|
        parodi = table.rows_hash
    end
    
    Então('essa paródia deve fica no modo de reprodução') do
        pending # Write code here that turns the phrase above into concrete actions
    end