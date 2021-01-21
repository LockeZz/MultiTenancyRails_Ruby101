module Subscribem
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception

    # def current_account
    #   if user_signed_in?
    #     @current_account ||= begin
    #       account_id = request.env["warden"].user(:scope => :account)
    #       Subscribem::Account.find(account_id)
    #     end
    #   end
    # end
    # helper_method :current_account
    #   def current_user
    #     if user_signed_in?
    #       @current_user ||= begin
    #         user_id = request.env["warden"].user(:scope => :user)
    #         Subscribem::User.find(user_id.id)
    #       end
    #     end
    #   end
    # helper_method :current_user
    #   def user_signed_in?
    #     request.env["warden"].authenticated?(:user)
    #   end
    # helper_method :user_signed_in?

    # def authenticate_user!
    #   unless user_signed_in?
    #     flash[:notice] = "Please sign in."
    #     redirect_to "/sign_in"
    #   end
    # end

    # def force_authentication!(account, user)
    #   request.env["warden"].set_user(user, :scope => :user)
    #   request.env["warden"].set_user(account, :scope => :account)
    # end

  end
end
