module Debtors
  class WelcomeController < BaseController
    def index
      @debtor_message = "Welcome to Oklend, my dear debtor!"
    end
  end
end
