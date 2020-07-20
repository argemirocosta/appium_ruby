#language: pt

@gestures
Funcionalidade: Usuário pode usar gestos

  @wip
  Cenário: Usuário pode deslizar o menu da esquerda
    Dado que estou na tela inicial
    Quando eu deslizo da esquerda para a direita
    Então eu devo ver o menu lateral esquerdo
    Então eu deslizo da direita para a esquerda para fechar
    Então eu vejo "Length" como a unidade atual para conversão

  Cenário: Usuário pode deslizar o menu da direita
    Dado que estou na tela inicial
    Então eu deslizo da direita para a esquerda
    Então eu vejo "Calculator" como a unidade atual para conversão
    Quando eu deslizo da esquerda para a direita para fechar
    Então eu vejo "Length" como a unidade atual para conversão
