require 'appium_lib'
require 'cucumber'
require_relative '../../lib/budget_app'

def opts
   {
     caps: {
       platformName: "Android",
       deviceName: "emulator-5554",
       app: "/Users/tech-a66/Engineering/sparta-mobile-testing/native/app/budgetwatch.apk"
     }
}
end

Appium::Driver.new(opts, true)

World(BudgetApp)
