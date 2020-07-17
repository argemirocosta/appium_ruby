Quando('eu deslizo da esquerda para a direita') do
  Appium::TouchAction.new.swipe(start_x: 0.01, star_y: 0.5, end_x: 0.8, end_y: 0.5, duration: 600).perform
end

Então('eu deslizo da direita para a esquerda') do
  Appium::TouchAction.new.swipe(start_x: 0.97, star_y: 0.5, end_x: 0.01, end_y: 0.5, duration: 600).perform
end
