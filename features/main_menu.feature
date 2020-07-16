#language: pt

  Funcionalidade: Como um usuário eu quero converter unidades

    Cenário: Que eu toco no ícone de menu, eu devo ver o menu lateral esquerdo
      Dado que estou na tela inicial
      Quando eu toco no ícone do menu
      Então eu devo ver o o menu lateral esquerdo

    @conversions
    Cenário: Eu devo poder abrir a tela de Minhas conversões
      Dado que estou na tela inicial
      Quando eu toco no ícone do menu
      E eu toco no botão de Minhas conversões
      Então eu vou para a tela de Minhas conversões