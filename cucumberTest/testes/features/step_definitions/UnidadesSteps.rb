

Quando('acessar o site') do
   @unidades = UnidadesPage.new
    @unidades.load
 end


Quando('clicar no menu Unidades') do
    @unidades.clicarUnidades
   end
  
 

   E('escolher filtros por facilidade') do
      @unidades.clicarFiltroFacilidade
   
#carrega a lista com todas as facilicades e seleciona e opções dinâmicas
    @unidades.filtrosFacils.each do |facil|
      @valor = rand(1..3)

        for i in 1..@valor
         @unidades.filtrosFacils[i].click
        end
        break      
    end
    

      
    end
  #Verifica se a lista de unidades está vazia para poder relizar a validação do nome da unidade
    Então('selecionar a primeira unidade exibida') do
      

         if  @unidades.listaVerDetalhes.size == 0 
            @@resultado =  'lista_vazia'
         
         else
            @@resultado =  'LISTA POPULADA'
            @@nomeUnidade1 = @unidades.nomesUnidades[0].text
            @unidades.listaVerDetalhes[0].click
                     
         end
              

    end
  
  
  #realiza a validação do nome da unidades
  Então('vou validar o nome da unidade selecionada') do

   

   if @@resultado == "lista_vazia"
      puts "NÃO VAI VALIDAR UNIDADE"
   else
   puts "VALIDANDO NOME DA UNIDADE"
   puts "1nomeUnidade: "+ @@nomeUnidade1
   puts "2nomeUnidade: "+@unidades.nomeDaUnidade
  
   expect(@unidades.nomeDaUnidade).to eq @@nomeUnidade1
   end
   
  end