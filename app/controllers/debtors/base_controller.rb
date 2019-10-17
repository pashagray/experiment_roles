module Debtors
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_debtor!

    private

    def authorize_debtor!
      raise AuthorizationError unless current_user.debtor?
    rescue
      head 403
    end
  end
end
