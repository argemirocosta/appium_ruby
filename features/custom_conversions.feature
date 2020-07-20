#language: pt

  @custom_conversions
  Funcionalidade: Usuário pode criar e gerenciar as conversões customizadas

    Cenário: Usuário pode criar uma nova conversão
      Dado que estou na tela inicial
      Então eu toco no ícone do menu
      Então eu toco no botão de Minhas conversões
      Então eu toco no botão Create yout first conversion
      E eu digito "Power" como o nome para a conversão customizada
      Quando eu toco no botão New Unit
      Então eu digito "Horse Power" como nome da unidade
      Então eu digito "1" como valor da unidade
      Então eu toco no ícone de check na tela de conversões customizadas
      Quando eu toco no botão New Unit
      Então eu digito "Mule Power" como nome da unidade
      Então eu digito "0.5" como valor da unidade
      Então eu toco no ícone de check na tela de conversões customizadas
      E eu verifico "Power" foi adicionado a lista de conversões customizadas