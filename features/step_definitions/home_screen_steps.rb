Então('a unidade selecionada da esquerda deve ser {string}') do |value|
  atual_unidade = find_elements(id: "select_unit_spinner")[0].text

  if atual_unidade != value
    fail("Expected unidade escolhida na esquerda é #{value}, mas o Actual é #{atual_unidade}")
  end

end

Então('a unidade seleconada da direita deve ser {string}') do |value|
  array_de_elementos = find_elements(id: "select_unit_spinner")
  atual_unidade = array_de_elementos[1].text

  if atual_unidade != value
    fail("Expected unidade escolhida na direita é #{value}, mas o Actual é #{atual_unidade}")
  end
end

Quando('eu tocar no botão de limpar') do
  log "Botão de limpar pressionado"
end

Então('deve mostrar todos os botões {string}') do |state|
  log "Botões #{state}"
end

Quando('eu digito {string} na caixa de texto') do |target|
  digitos = target.split("")

  digitos.each do |num|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end

end

Então('eu devo ver o resultado {string} !') do |result|
  value = find_element(id: "target_value").text

  if value != result
    fail("Expected unidade escolhida na direita é #{result}, mas o Actual é #{value}")
  end
end

Então('eu toco no ícone de adicionar favoritos') do
  find_element(id: "action_add_favorites").click
end

Então('eu toco em Conversões Favoritas') do
  text("Favorites conversions").click
end

Então('eu verifico {string} foi adicionado a lista de conversões favoritas') do |unit_type|
  text(unit_type)
end

Então('eu toco no ícone de busca') do
  find_element(id: "action_search").click
end

Então('eu digito {string} no campo de busca') do |text|
  find_element(id: "search_src_text").send_keys(text)
end

Então('eu toco no botão de retorno no teclado') do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count: 1).perform
end

Então('eu vejo {string} como a unidade atual para conversão') do |current_unit|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{current_unit}']")
end
