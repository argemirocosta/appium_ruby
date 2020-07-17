#language: pt

@home_screen
Funcionalidade: Testar as funcionalidades da página principal

  Contexto:
    Dado que estou na tela inicial

  @smoke
  Cenário: Valores padrão na tela inicial são Pés e Centímetros
    Então a unidade selecionada da esquerda deve ser "Foot"
    E a unidade seleconada da direita deve ser "Centimeter"

  Cenário: Botão Show all deve estar ativado na tela
    Então o botão Show all deve ficar "desativado"
    Quando eu digito "1" no teclado da aplicação
    Então o botão Show all deve ficar "ativado"

  @smoke
  Esquema do Cenario: Verificar a conversão default
    Quando eu digito "<target>" no teclado da aplicação
    Então eu devo ver o resultado "<result>" !
    Exemplos:
      | target | result |
      | 1      | 30.48  |
      | 2      | 60.96  |
      | 3      | 91.44  |
      | 9      | 274.32 |
      | 10     | 304.8  |

  @smoke
  Cenário: Usuário pode adicionar a conversão atual na lista de favoritos
    Então eu toco no ícone de adicionar favoritos
    Quando eu toco no ícone do menu
    Então eu toco em Conversões Favoritas
    E eu verifico "Length" foi adicionado a lista de conversões favoritas

  Cenário: Usuário pode buscar um tipo de conversão existente
    Então eu toco no ícone de busca
    Então eu digito "Temperature" no campo de busca
    E eu toco no botão de retorno no teclado
    Então eu vejo "Temperature" como a unidade atual para conversão
    Então a unidade selecionada da esquerda deve ser "Celsius"
    E a unidade seleconada da direita deve ser "Fahrenheit"

  @smoke
  Esquema do Cenário: Usuário pode selecionar valores para as unidades escolhidas
    Então eu seleciono "<unidade>" para a unidade escolhida na esquerda
    Quando eu digito "<valor_inicio>" no teclado da aplicação
    Então eu devo ver o resultado "<resultado>" !
    Exemplos:
      | unidade | valor_inicio | resultado |
      | Inch1   | 1            | 2.54      |
      | Link    | 1            | 20.1168   |

  @smoke
  Cenário: Usuário pode converter valores
    Quando eu toco no ícone do menu
    Então eu seleciono o menu "Volume"
    Então eu seleciono "Cup" para a unidade da direita
    Quando eu digito "1" no teclado da aplicação
    Então eu devo ver o resultado "15.1416" !

  Cenário: Usuário pode trocar valores
    Então a unidade selecionada da esquerda deve ser "Foot"
    E a unidade seleconada da direita deve ser "Centimeter"
    Quando eu toco no botão de trocar as unidades
    Então a unidade selecionada da esquerda deve ser "Centimeter"
    E a unidade seleconada da direita deve ser "Foot"

  @wip
  Cenário: Usuário pode limpar o histórico de conversões
    Quando eu toco no ícone do menu
    Então eu seleciono o menu "History"
    Então eu vejo "History" como a unidade atual para conversão
    Então eu devo ver o texto "No history right now"
    Quando eu toco no ícone do menu
    Então eu seleciono o menu "Length"
    Quando eu digito "1" no teclado da aplicação
    Quando eu toco no ícone do menu
    Então eu seleciono o menu "History"
    E eu verifico que o "1" º resultado no histórico é "Length"
    Quando eu toco em delete da "1" º linha do histórico
    Então eu devo ver o texto "No history right now"
