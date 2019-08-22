#language:pt

  Funcionalidade: Listar Donos de Animais
    Como um usuário do sistema de PetShop
    Quero listar todos os donos de animais
    Para que meus funcionários possam encontrá-los facilmente

    Contexto: Acessar a tela principal do sistema de Petshop

        @listar-donos
        Cenário: Listar todos os donos de animaizinhos no sistema

            Dado que eu abra a tela principal do sistema
            Quando eu clicar no botão de listar
            Então deve ser apresentado a lista com os nomes de todos os donos 