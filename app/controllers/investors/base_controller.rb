module Investors
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_investor!

    private

    def authorize_investor!
      raise AuthorizationError unless current_user.investor?
    rescue
      head 403
    end
  end
end
