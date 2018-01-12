require 'spec_helper'


describe 'Testing the budget app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the budgetwatch app" do
    find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?
  end

  it "should have a bugets button/tab" do
    # find_elements(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[1]')[0].displayed?
    # find_elements(:xpath, '//android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[1]')[0].displayed?
    # find_elements(:id, 'protect.budgetwatch:id/menu')[0].displayed?
    expect(find_elements(:id, 'protect.budgetwatch:id/menu')[0].text).to eq 'Budgets'
  end

  it "should be able to access the budgets page" do
    # find_elements(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[1]')[0].click
    scroll_to('Budgets').click
    find_elements(:id, 'protect.budgetwatch:id/action_add')[0].displayed?
  end

  it "should be able to add a budget" do
    # find_elements(:id, 'protect.budgetwatch:id/action_add')[0].click
    # find_elements(:id, 'protect.budgetwatch:id/budgetNameEdit')[1].click
    # fill_in(:id, 'protect.budgetwatch:id/budgetNameEdit', :with => 'Drink')
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys('drink')
    find_element(:id, 'protect.budgetwatch:id/budgetValueEdit').send_keys('90')
    find_element(:id, 'protcte.budgetwatch:id/action_save').click
    expect(find_elements(:id, 'protect.budgetwatch:id/budgetName')[0].text).to eq("drink")
  end


end
