#language: pt

  @home_screen
  Funcionalidade: Testar as funcionalidades da página principal

    @default
    Cenário: Valores padrão na tela inicial são Pés e Centímetros
      Dado que estou na tela inicial
      Então a unidade selecionada da esquerda deve ser "Pé"
      E a unidade seleconada da direita deve ser "Centímetro"

    Cenário: Mostrar todos os botões ativados na tela
      Dados que estou na tela inicial
      Então deve mostrar todos os botões "ativados"
      Quando eu tocar no botão de limpar
      Então deve mostrar todos os botões "desativados"

    @conversions
    Esquema do Cenario: Verificar a conversão default
      Dado que estou na tela inicial
      Quando eu digito "<target>" na caixa de texto
      Então eu devo ver o resultado "<result>" !
      Exemplos:
        |target|result|
        |1     |12    |
        |2     |24    |
        |3     |36    |
        |9     |106   |

      Cenário: Usuário pode adicionar a conversão atual na lista de favoritos
        Dado que estou na tela inicial
        Então eu toco no ícone de adicionar favoritos
        Quando eu toco no ícone do menu
        Então eu toco em Conversões Favoritas
        E eu verifico "Lenght" foi adicionado a lista de conversões favoritas

        @wip
      Cenário: Usuário pode buscar um tipo de conversão existente
        Dado que estou na tela inicial
        Então eu toco no ícone de busca
        Então eu digito "Temperature" no campo de busca
        E eu toco no botão de retorno no teclado
        Então eu vejo "Temperature" como a unidade atual para conversão
        Então a unidade selecionada da esquerda deve ser "Celsius"
        E a unidade seleconada da direita deve ser "Fahrenheit"