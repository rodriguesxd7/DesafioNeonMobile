Before do
  driver.start_driver #inicia o serivdor do appium
  driver.manage.timeouts.implicit_wait = 10 #configura um wait de 10 segundos

  @nav = Navigator.new
  @insert = PreencherFormScreen.new
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64) #realiza o screenshot da ultima tela do teste
 
  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver #quita o driver
end
