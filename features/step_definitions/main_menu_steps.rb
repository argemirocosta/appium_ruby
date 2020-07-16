Dado('que estou na tela inicial') do
  find_element(id:"action_search")
  find_element(id:"action_add_favorites")
end

Quando('eu toco no ícone do menu') do
  find_element(accessibility_id: "Open navigation drawer").click
end

Então('eu devo ver o o menu lateral esquerdo') do
  text("Unit Converter")
end

Quando('eu toco no botão de Minhas conversões') do
  text("My conversions").click
end

Então('eu vou para a tela de Minhas conversões') do
  text("No personal conversion created yet")
end