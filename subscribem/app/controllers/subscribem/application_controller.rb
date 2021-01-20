module Subscribem
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_account
      if user_signed_in?
        @current_account ||= begin
          account_id = request.env["warden"].user(:scope => :account)
          Subscribem::Account.find(account_id)
        end
      end
    end
    helper_method :current_account
      def current_user
        if user_signed_in?
          @current_user ||= begin
            user_id = request.env["warden"].user(:scope => :user)
            Subscribem::User.find(user_id.id)
          end
        end
      end
    helper_method :current_user
      def user_signed_in?
        request.env["warden"].authenticated?(:user)
      end
    helper_method :user_signed_in?

  end
end
