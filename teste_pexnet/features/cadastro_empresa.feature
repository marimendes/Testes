#language:pt

  Funcionalidade: Cadastrar uma Empresa
    Como um usuário do sistema de PexNet
    Quero cadastrar uma empresa
    Para conseguir usufruir dos beneficios

    Contexto: Acessar a tela principal do sistema 

      @cadastrar-empresa
      Cenário: Cadastrar a empresa

        Dado que eu abra a pagina inicial
        Então eu realizo o login no sistema
        Quando acesso o sistema, eu acesso o PAE
        Então eu vou pra página de cadastrar uma instituição
        Quando eu insiro todos os dados da empresa
        Então devo receber uma notificacão de sucesso

 