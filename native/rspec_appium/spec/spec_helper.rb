require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a66/Engineering/sparta-mobile-testing/native/app/budgetwatch.apk"
    }
  }

end
