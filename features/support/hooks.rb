Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    if !File.directory?("reports/screenshots")
      FileUtils.mkdir_p("reports/screenshots")
    end

    time_stamp = Time.now.strftime("%d-%m-%Y_%H:%M:%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("reports/screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    attach "#{screenshot_file}", "image/png"
  end
  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("reports/screenshots") if File.directory?("reports/screenshots")
end