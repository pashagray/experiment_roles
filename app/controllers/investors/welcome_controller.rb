module Investors
  class WelcomeController < BaseController
    def index
      @investor_message = "Welcome to Oklend, my dear investor"
    end
  end
end
