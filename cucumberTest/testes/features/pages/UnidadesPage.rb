class UnidadesPage < SitePrism::Page
    set_url ''

    elements :menuUnidade, 'div[class="buttoncomponentstyle__ButtonContentStyled-sc-11us3l0-3 bTUJDG"]'
    elements :filtrosFacils, 'div[class="checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI"]'
    elements :listaVerDetalhes,:xpath, '//div[text()="Ver detalhes"]'
    elements :nomesUnidades,:xpath, '//h3[@class="typographycomponentstyle__H3-sc-1oox73n-3 caOpMn"]'

 
    element  :facilidade,  '#checkoox-select-facilities'
    element :acessibilidade, "label[for='_Acessibilidade']"
    element :textDetalhes, "h1[class='typographycomponentstyle__H1-sc-1oox73n-1 lomAMa']"

  



def clicarUnidades
    click_link 'Unidades'
  end

  def clicarFiltroFacilidade
    wait_until_facilidade_visible
    facilidade.click
  end

  def clicarAcessibilidade
    wait_until_acessibilidade_visible
    acessibilidade.click
  end

  def clicarVerDetalhes
    click_link 'Ver detalhes'
  end

  def nomeDaUnidade
    wait_until_textDetalhes_visible
    textDetalhes.text
  end
   
   
    
end