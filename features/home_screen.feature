#language: pt

  @home_screen
  Funcionalidade: Testar as funcionalidades da página principal

    @default
    Cenário: Valores padrão na tela inicial são Pés e Centímetros
      Dado que estou na tela inicial
      Então a unidade selecionada da esquerda deve ser "Pé"
      E a unidade seleconada da direita deve ser "Centímetro"

    Cenário: Botão Show all deve estar ativado na tela
      Dados que estou na tela inicial
      Então o botão Show all deve ficar "desativado"
      Quando eu digito "1" no teclado da aplicação
      Então o botão Show all deve ficar "ativado"

    @conversions
    Esquema do Cenario: Verificar a conversão default
      Dado que estou na tela inicial
      Quando eu digito "<target>" no teclado da aplicação
      Então eu devo ver o resultado "<result>" !
      Exemplos:
        |target|result|
        |1     |30.48  |
        |2     |60.96  |
        |3     |91.44  |
        |9     |274.32 |
        |10    |304.8  |

    @wip
      Cenário: Usuário pode adicionar a conversão atual na lista de favoritos
        Dado que estou na tela inicial
        Então eu toco no ícone de adicionar favoritos
        Quando eu toco no ícone do menu
        Então eu toco em Conversões Favoritas
        E eu verifico "Length" foi adicionado a lista de conversões favoritas

      Cenário: Usuário pode buscar um tipo de conversão existente
        Dado que estou na tela inicial
        Então eu toco no ícone de busca
        Então eu digito "Temperature" no campo de busca
        E eu toco no botão de retorno no teclado
        Então eu vejo "Temperature" como a unidade atual para conversão
        Então a unidade selecionada da esquerda deve ser "Celsius"
        E a unidade seleconada da direita deve ser "Fahrenheit"