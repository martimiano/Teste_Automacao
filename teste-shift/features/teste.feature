#language: pt

Funcionalidade: Compra
    Sendo um cliente da loja
    Quero comprar produtos
    Para que 

    @compra
    Cenario: Fazer compra

        Dado que acesso a página do site
        Quando faço um busca de uma blusa
        E adiciono a blusa ao carrinho
        E reviso a compra
        E realizo login no site
        E confirmo o endereço
        E aceito os termos
        E seleciono a forma de pagamento
        E finalizo a compra
        E retorno aos meus pedidos
        Então possuo o arquivo com o datalhamento do pedido


    