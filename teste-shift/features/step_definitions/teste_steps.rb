Dado('que acesso a página do site') do
    visit "http://automationpractice.com/index.php"

end
  
Quando('faço um busca de uma blusa') do
    find("#search_query_top").set "blouse"
    click_button "submit_search"
    
end

  Quando('adiciono a blusa ao carrinho') do
    have_text ("Blouse")
    find(".icon-eye-open").hover
    click_link "Add to cart"
    have_text ("Product successfully added to your shopping cart")
    click_link "Proceed to checkout"
  end
  
  Quando('reviso a compra') do
    have_text ("SHOPPING-CART SUMMARY")
    click_link "Proceed to checkout"
  end
  
  Quando('realizo login no site') do
    have_text("AUTHENTICATION")
    find("#email").set "kenneth7707@uorak.com"
    find("#passwd").set "12345"
    click_button "SubmitLogin"
  end
  
  Quando('confirmo o endereço') do
    have_text ("ADDRESSES")
    click_button "processAddress"
  end

  Quando('aceito os termos') do
    have_text ("SHIPPING")
    have_text ("Terms of service")
    find("#uniform-cgv").set true 
    click_button "processCarrier"
  end

  Quando('seleciono a forma de pagamento') do
    have_text ("PLEASE CHOOSE YOUR PAYMENT METHOD")
    click_link "Pay by bank wire"
  end
  
  Quando('finalizo a compra') do
    have_text ("BANK-WIRE PAYMENT.")
    click_button "I confirm my order"
  end
  
  Quando('retorno aos meus pedidos') do
    have_text ("ORDER CONFIRMATION")
    click_link "Back to orders"
  end

Então('possuo o arquivo com o datalhamento do pedido') do
    expect(page).to have_text ("ORDER HISTORY")
    find(".footable-toggle").click
    click_link "Invoice"
    sleep 5
end
