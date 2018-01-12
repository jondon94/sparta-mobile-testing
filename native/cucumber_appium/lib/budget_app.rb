require_relative 'pages/main_page'

module BudgetApp

  def mainpage
    mainpage.new($driver)
  end

end
