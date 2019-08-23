include RSpec::Matchers

Dado("que eu abra a pagina inicial") do
  print("Abriu")
end

Então("eu realizo o login no sistema") do
  find("#username").set("64760537104")
end

Quando("acesso o sistema, eu acesso o PAE") do
  click_button('Acessar')
  click_on('Produtos')
end

Então("eu vou pra página de cadastrar uma instituição") do
  click_on('PAE - Programa de Auxílio a Educação')
end

Quando("eu insiro todos os dados da empresa") do
  within_window(windows.last) do
    click_on('Cadastro')
    click_on('Instituição')
    click_button('j_idt196')
    find("#idCnpj").set("51267378000197")
    find("#nomeInstituicao").set("Empresinha")
    find("#idMec").set("1234567890")
    find('#idSigla').set("E")
    find('#idCep').set("70342101")
    find("#idEndereco").set("Home")
    find("#idComplemento").set("")
    find("#idBairro").set("Ali")
    within '#uf' do
        find("option[value='DF']").click
    end
    find("#municipio").set("tão tão distante")
    find(:id, "tabela:2:selectCursoInteresse").set(true)
    click_button('j_idt273')
  end
end

Então("devo receber uma notificacão de sucesso") do
  within_window(windows.last) do
    page.should have_content("Instituição de Ensino incluída com sucesso!")
  end
end