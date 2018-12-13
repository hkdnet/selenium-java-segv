require "selenium-webdriver"

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
  chrome_options: {
    args: %w(headless)
  }
)

driver = Selenium::WebDriver.for :remote, desired_capabilities: caps, url: "http://selenium:4444/wd/hub"
driver.quit
