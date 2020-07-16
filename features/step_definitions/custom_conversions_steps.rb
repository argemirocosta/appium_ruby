Então('eu toco no botão Create yout first conversion') do
  find_element(id: "btn_new_custom_conversion").click
end

Então('eu digito {string} como o nome para a conversão customizada') do |name|
  find_element(id: "edit_custom_conversion_category_name").send_keys(name)
end

Quando('eu toco no botão New Unit') do
  find_element(id: "btn_new_custom_unit").click
end

Então('eu digito {string} como nome da unidade') do |unit_name|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
end

Então('eu digito {string} como símbolo da unidade') do |symbol_name|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(symbol_name)
end

Então('eu digito {string} como valor da unidade') do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Então('eu toco no ícone de check na tela de conversões customizadas') do
  find_element(id: "action_confirm_custom_unit").click
end

Quando('eu toco no botão Ok na tela de conversões customizadas') do
  find_element(id: "btn_custom_conversion_details_ok").click
end

Então('eu verifico {string} foi adicionado a lista de conversões customizadas') do |conversion_name|
  text(conversion_name)
end
