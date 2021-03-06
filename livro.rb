require_relative 'produto'
require_relative 'impresso'

#base de Orientação a Objetos: dados(atributos) e comportamento(metodo) que são relacionados ficam no mesmo lugar.
class Livro < Produto
    #livro é um produto(herança(< extende)/ class)
    #Livro se comporta como impresso(composição(include)/ modulo)
    include Impresso
  
    def initialize titulo, preco, ano_lancamento, possui_reimpressao, editora, possui_sobrecapa
        super(titulo, preco, ano_lancamento, editora) 
        @possui_reimpressao = possui_reimpressao
        @possui_sobrecapa = possui_sobrecapa
    end

    

    def possui_reimpressao?
        @possui_reimpressao
    end

    #E note que só de mudar essa maneira de trabalhar passamos a suportar queries mais complexas:
    #Agora podemos não só classificar pelo tipo do produto vendido como ebook, revista ou livro mas 
    #também por características ou categorias. Uma outra maneira de escrever a comparação seria:
    # def matches? query
    #     ["ebook", "digital"].include? query
    # end

    def matches? query
        #query=="livro" || query=="impresso"
        ["livro", "impresso"].include? query
    end

    
end


   
   


